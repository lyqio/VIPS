module main

import os
import cli

// vips supported              // returns the languages that are supported and whether they work on your computer
// vips stored [directory]     // works as a basic ls command that tells you the scripts you have within a given directory

// given that the input is in the form  <dir1>.<dir2>.<dir3>.<file>, search for the file dir1/dir2/dir3/file.<extension>
// once you have found the target files location, determine it's type and execute it accordingly
// output the result of running the script to the terminal
fn main() {
  mut cmd := cli.Command {
    // Vlang International Program Script-handler
    name: 'VIPS'
    description: 'A script handler written in the V programming language, currently supports Ruby, Python and Lua'
    version: '0.3.0'
  }

  mut do_cmd := cli.Command {
    name:   'do'
    description:  'runs the provided script, will only search the base script directory, dots are used instead of slashes, e.g. `vips do ansi.cursor`'
    usage:  '[directory]'
    required_args: 1
    execute:  command_do
  }

	cmd.add_command(do_cmd)
  cmd.setup()
  cmd.parse(os.args)
}
