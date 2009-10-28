#!/bin/sh

bindest="/usr/local/bin/"
libdest="/usr/local/lib/"

function wait_for_user {
    echo
    echo "-- Press Return to close this window --"
    read
}

trap wait_for_user EXIT

echo '======================================================================'
echo '||         Rubygame Intel Mac Library Pack Install Time GO!         ||'
echo '======================================================================'
echo

# Check processor architecture.
case `uname -p` in
    i386)
        # Good, it's the correct architecture for these libs. We can continue.
        ;;
    *)
        echo "Sorry, this pack only works for Intel Macs. :("
        exit 1
        ;;
esac

echo "This script will help you install the files in this pack."
echo "It will do 5 things:"
echo
echo " 1. Ask for your password (actually, it's the sudo command asking)."
echo "    You must provide your password to sudo so that the script can"
echo "    install all the files."
echo
echo " 2. Copy the files in the \"lib/\" directory to \"/usr/local/lib/\"."
echo
echo " 3. Copy \"bin/rsdl\" to \"/usr/local/bin/rsdl\"."
echo
echo " 4. Install the gem using \"sudo gem install ffi-*.gem\"."
echo
echo " 5. Install Rubygame with \"sudo gem install rubygame\"."
echo
echo "You will be asked before any files are overwritten by steps 2 or 3."
echo "If you prefer, you can cancel this script and install the files yourself."
echo
echo "Enter your password to begin, or close this window to cancel."
echo

sudo -v # prompt for password

# Did sudo fail?
if [ $? != 0 ]
then
    echo
    echo "You must provide your password to use this installer."
    exit 1
fi

thisdir=`dirname $0`

echo "Installing libs..."
sudo cp -Rvi $thisdir/lib/* $libdest

echo "Installing rsdl..."
sudo cp -Rvi $thisdir/bin/* $bindest

echo "Installing ffi gem..."
sudo gem install --local $thisdir/ffi-*.gem

echo "Installing rubygame..."
sudo gem install --remote rubygame

echo
echo "That's all, folks. If there were no errors above, installation is complete\!"
echo "Remember to run 'rsdl my_game.rb', not 'ruby my_game.rb'\!"
