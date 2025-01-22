# Welcome to VIPS

this is a very small, work in progress script handler written in V, that supports python, ruby and lua.
It works by storing your scripts and allowing you to execute them using the command line.
You add scripts by putting them in the ./scripts folder, and execute them using the following:
`vips do example.test.testfile`
the '.'s are essentially the same as '/' when it comes to directories.
In the above example, the program would search for the file `src/scripts/example/test/testfile.py`. but would also search for `../testfile.lua` and `../testfile.rb` without you having to specify it. First things first, to check which languages you have working and installed on your system, you can run:
`vips supported`
which will tell you all the working languages.

# Note
this only works on Windows at the moment