def code(n)
    return "\\033[" + n.to_s + "m"
end

def basic()
  puts "Ansi escapes with '\\033[Xm where X is the code"
end

def text_formatting()
    puts "\033[1mBold\033[0m".ljust(50) + code(1)
    puts "\033[2mDim\033[0m".ljust(50)   + code(2)
    puts "\033[3mItalic\033[0m".ljust(50) + code(3)
    puts "\033[4mUnderline\033[0m".ljust(50) + code(4)
    puts "\033[5mBlink\033[0m".ljust(50) + code(5)
    puts "\033[6mRapid Blink\033[0m".ljust(50) + code(6)
    puts "\033[7mReverse\033[0m".ljust(50) + code(7)
    puts "\033[8mHidden\033[0m".ljust(50) + code(8)
    puts "\033[9mStrikethrough\033[0m".ljust(50) + code(9)
    puts "\033[10mNormal Intensity\033[0m".ljust(50) + code(10)
end

def less_supported_colours()
    for i in (11..19) do
        puts ("\033[" + i.to_s + "mLess Supported Colour #" + i.to_s + "\033[0m").ljust(50) + code(i)
    end
end

def foreground()
    puts "\033[30mBlack\033[0m".ljust(50) + code(30)
    puts "\033[31mRed\033[0m".ljust(50) + code(31)
    puts "\033[32mGreen\033[0m".ljust(50) + code(32)
    puts "\033[33mYellow\033[0m".ljust(50) + code(33)
    puts "\033[34mBlue\033[0m".ljust(50) + code(34)
    puts "\033[35mMagenta\033[0m".ljust(50) + code(35)
    puts "\033[36mCyan\033[0m".ljust(50) + code(36)
    puts "\033[37mWhite\033[0m".ljust(50) + code(37)
end

def bright_foreground
    puts "\033[90mBright Black\033[0m".ljust(50) + code(90)
    puts "\033[91mBright Red\033[0m".ljust(50) + code(91)
    puts "\033[92mBright Green\033[0m".ljust(50) + code(92)
    puts "\033[93mBright Yellow\033[0m".ljust(50) + code(93)
    puts "\033[94mBright Blue\033[0m".ljust(50) + code(94)
    puts "\033[95mBright Magenta\033[0m".ljust(50) + code(95)
    puts "\033[96mBright Cyan\033[0m".ljust(50) + code(96)
    puts "\033[97mBright White\033[0m".ljust(50) + code(97)
end

def background
    puts "\033[40mBlack\033[0m".ljust(50) + code(40)
    puts "\033[41mRed\033[0m".ljust(50) + code(41)
    puts "\033[42mGreen\033[0m".ljust(50) + code(42)
    puts "\033[43mYellow\033[0m".ljust(50) + code(43)
    puts "\033[44mBlue\033[0m".ljust(50) + code(44)
    puts "\033[45mMagenta\033[0m".ljust(50) + code(45)
    puts "\033[46mCyan\033[0m".ljust(50) + code(46)
    puts "\033[47mWhite\033[0m".ljust(50) + code(47)
end

def bright_background
    puts "\033[100mBright Black\033[0m".ljust(50) + code(100)
    puts "\033[101mBright Red\033[0m".ljust(50) + code(101)
    puts "\033[102mBright Green\033[0m".ljust(50) + code(102)
    puts "\033[103mBright Yellow\033[0m".ljust(50) + code(103)
    puts "\033[104mBright Blue\033[0m".ljust(50) + code(104)
    puts "\033[105mBright Magenta\033[0m".ljust(50) + code(105)
    puts "\033[106mBright Cyan\033[0m".ljust(50) + code(106)
    puts "\033[107mBright White\033[0m".ljust(50) + code(107)
end

def other_effects
    puts "\033[51mFramed\033[0m".ljust(50) + code(51)
    puts "\033[52mEncircled\033[0m".ljust(50) + code(52)
    puts "\033[53mOverlined\033[0m".ljust(50) + code(53)
    puts "\033[54mNot framed/encircled\033[0m".ljust(50) + code(54)
    puts "\033[55mNot Overlined\033[0m".ljust(50) + code(55)
    puts "\033[55mNot Overlined\033[0m".ljust(50) + code(55)
end

def summary
    puts("\033[39m\\033[49m                 - Reset color")
    puts("\\033[2K                          - Clear Line")
    puts("\\033[<L>;<C>H or \\033[<L>;<C>f  - Put the cursor at line L and column C.")
    puts("\\033[<N>A                        - Move the cursor up N lines")
    puts("\\033[<N>B                        - Move the cursor down N lines")
    puts("\\033[<N>C                        - Move the cursor forward N columns")
    puts("\\033[<N>D                        - Move the cursor backward N columns\n")
    puts("\\033[2J                          - Clear the screen, move to (0,0)")
    puts("\\033[K                           - Erase to end of line")
    puts("\\033[s                           - Save cursor position")
    puts("\\033[u                           - Restore cursor position\n")
    puts("\\033[4m                          - Underline on")
    puts("\\033[24m                         - Underline off\n")
    puts("\\033[1m                          - Bold on")
    puts("\\033[21m                         - Bold off")
end

def all()
    basic
    text_formatting
    less_supported_colours
    foreground
    bright_foreground
    background
    bright_background
    other_effects
    summary
end

all
