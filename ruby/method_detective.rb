# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(2, "o")
# => “zoom”

"enhance".insert(0, "    ").insert(-1, "    ")
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
#=> "the usual suspects"

" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The case of the disappearing last letter".slice(1...40)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

"z"[0].ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 corresponds to lowercase z in ASCII, which was adapted from telegraphy.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4