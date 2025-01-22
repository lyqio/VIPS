module main

import cli


pub fn cmd_supported(cmd cli.Command) ! {
	good := "✅"
	bad := "❌"

	println("                Supported:     Installed")
	for lang in languages {
		try_script("welcome/welcome", lang) or {
			println("${lang}:    	    ${good}            ${bad}")
			continue
		}
		println("${lang}:    	    ${good}            ${good}")
	}
}