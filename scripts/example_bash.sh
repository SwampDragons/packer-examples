#!/bin/bash
if [ "$PACKER_BUILD_NAME" == "foobar" ]
then
    echo "welcome to packer, foobar!"
    echo """check out this script's source to see how we can change our
    script behavior based on build name!  This is useful for when we want to
    build multiple images with a single config."""
else
    echo "This will only get output if our build isn't named foobar."
fi

echo "let's explore the default env variables you have at your disposal..."
echo "PACKER_BUILDER_TYPE is $PACKER_BUILDER_TYPE"
echo "PACKER_HTTP_ADDR is $PACKER_HTTP_ADDR"