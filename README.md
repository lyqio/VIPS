# Welcome to VIPS

this is a very small, work in progress script handler written in V, that supports python, ruby and lua.
It works by storing your scripts and allowing you to execute them using the command line.
You add scripts by putting them in the ./scripts folder, and execute them using the following:
<br>
`vips do example.test.testfile`
<br>
the '.'s are essentially the same as '/' when it comes to directories.
In the above example, the program would search for the file `src/scripts/example/test/testfile.py`. but would also search for `../testfile.lua` and `../testfile.rb` without you having to specify it. First things first, to check which languages you have working and installed on your system, you can run:
<br>
`vips supported`
<br>
which will tell you all the working languages.

# Note
this only works on Windows at the moment

# Installation and setup
you must have the following file structure setup for this to work:
`.../V/Script/src/scripts` folder created for your scripts, and; <br>
`.../V/Script/vips.exe` as your vips executable file
