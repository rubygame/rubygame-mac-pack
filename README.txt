
Rubygame Intel Mac Library Pack README GO!

This library pack contains all the libraries and extras you need to
run Rubygame on an Intel Mac using the Ruby version installed by
default with Mac OS X.

These libraries are only compiled for Intel Mac. If you are using a
PowerPC Mac, this pack won't help you at all, sorry. I hope to
put together a Universal pack sometime in the future.

For an automated install, double-click on "install.sh".
The install script will do 5 things:

 1. Ask for your password (actually, it's the sudo command asking).
    You must provide your password to sudo so that the script can
    install all the files.

 2. Copy the files in the "lib/" directory to "/usr/local/lib/".

 3. Copy "bin/rsdl" to "/usr/local/bin/rsdl".

 4. Install the gem using "sudo gem install ffi-0.5.1-darwin.gem".

 5. Install Rubygame with "sudo gem install rubygame".

If there were no errors, you can now run Rubygame apps, using rsdl
instead of the normal ruby command. So, instead of this:

  ruby my_game.rb

Type this:

  rsdl my_game.rb

Remember, you *must* use rsdl to run Rubygame apps! Regular ruby will
not work, you would only get a bunch of errors.

(By the way, if you are using a Ruby version other than the default
installed with Mac OS X, you must compile rsdl yourself. You should
compile and install SDL 1.2.14 from the source before compiling rsdl.)

The following software is included in this pack:

* flac-1.2.1
* freetype-2.3.9
* libmikmod-3.1.11
* libogg-1.1.3
* libvorbis-1.1.0
* SDL_image-1.2.8
* SDL_mixer-1.2.9
* SDL_ttf-2.0.9
* SDL-1.2.14
* smpeg-r389
* ffi-0.5.1 (with gemspec tweaks)
* rsdl (http://github.com/knu/rsdl)

Equivalent source code is available online:

  http://download.rubygame.org/files/extras/source/


Enjoy!

- John Croisant, jacius@gmail.com
