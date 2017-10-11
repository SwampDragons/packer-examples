Write-Output("PACKER_BUILD_NAME is automatically set for you, or you can set it in your builder variables; the default for this builder is: " + $Env:PACKER_BUILD_NAME )
Write-Output("Remember that escaping variables in powershell requires backticks; for example VAR1 from our config is " + $Env:VAR1 )
Write-Output("Likewise, VAR2 is " + $Env:VAR2 )
Write-Output("and VAR3 is " + $Env:VAR3 )