# set administrator password
net user Administrator SuperS3cr3t!
wmic useraccount where "name='Administrator'" set PasswordExpires=FALSE

# First, make sure WinRM doesn't run and can't be connected to
netsh advfirewall firewall add rule name="WinRM" protocol=TCP dir=in localport=5985 action=block
net stop winrm

# turn off PowerShell execution policy restrictions
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope LocalMachine

# configure WinRM
winrm quickconfig -q
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="0"}'
winrm set winrm/config '@{MaxTimeoutms="7200000"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service '@{MaxConcurrentOperationsPerUser="12000"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/client/auth '@{Basic="true"}'

net stop winrm
set-service winrm -startupType automatic

# Finally, allow WinRM connections and start the service
netsh advfirewall firewall set rule name="WinRM" new action=allow
net start winrm