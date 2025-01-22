module main

import os
import cli

// script test
// should run test.py


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
    usage:  '<name>'
    required_args: 1
    execute:  command_do
  }

	cmd.add_command(do_cmd)
  cmd.setup()
  cmd.parse(os.args)
}

// dir:       the directory of the file to be checking (file extension isn't included)  e.g. D:\Programming\V\VIPS\src\scripts\test
// command:   the language you are using e.g. python | ruby | lua
fn try_script(dir string, language string) ! {
  extension := if language == "python" {
    "py"
  } else if language == "ruby" {
    "rb"
  } else if language == "lua" {
    "lua"
  } else {
    ""
  }
  
  mut script := language + " src/scripts/" + dir + "." + extension

  for i in 3..os.args.len {
    script += " " + os.args[i] + " "
  }

  mut result := os.execute(script)

  if result.exit_code == 0 {
    print(result.output)
    return 
  }

  return error("cannot find given file")
}

fn command_do(cmd cli.Command) ! {
  dir := os.args[2].replace(".", "/")
  languages := [
    "python", 
    "ruby", 
    "lua"
  ]

  for lang in languages {
    try_script(dir, lang) or {
      continue
    }

    return
  }

  return error("Could not find specified file")
}
