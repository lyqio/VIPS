module main

import os
import cli

const languages := [
	"python",
	"ruby",
	"lua",
]

pub fn to_extension(language string) string {
  return if language == "python" {
    "py"
  } else if language == "ruby" {
    "rb"
  } else if language == "lua" {
    "lua"
  } else {
    ""
  }
}

fn getdir() !string {
  result := os.execute("powershell -Command pwd")
  
  if result.exit_code == 0 {
    out := result.output.split("\r\n")
    return out[4].replace("\\", "/")
  }
  
  return error("Could not get working directory")
}

// dir:       the directory of the file to be checking (file extension isn't included)  e.g. D:\Programming\V\VIPS\src\scripts\test
// command:   the language you are using e.g. python | ruby | lua
fn try_script(dir string, language string) ! {
  extension := to_extension(language)
  working_dir := getdir()!

  mut script := language + " " + working_dir + "/V/Script/src/scripts/" + dir + "." + extension

  for i in 3..os.args.len {
    script += " " + os.args[i] + " "
  }

  result := os.execute(script)

  if result.exit_code == 0 {
    print(result.output)
    return
  }

  return error("cannot find given file")
}

pub fn command_do(cmd cli.Command) ! {
  dir := os.args[2].replace(".", "/")

  for lang in languages {
    try_script(dir, lang) or {
      continue
    }

    return
  }

  return error("Could not find specified file")
}
