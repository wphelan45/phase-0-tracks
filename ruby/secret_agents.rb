# First we will write the encrypt method.
# Encrypt will advance every letter of a string forward one letter of the aphabet. Ex: "a" will show up as "b."
# We also need to make sure every letter stays in lowercase when input and ouput.
def encrypt(str)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  start_count = 0
  if str[start_count] == alphabet[0]
    until start_count == str.length
      str[start_count] = str[start_count].next
      start_count += 1
    end
  str
  elsif str[start_count] == alphabet[25]
     str[start_count] = alphabet[0]
      start_count += 1
      until start_count == str.length
        str[start_count] = str[start_count].next
        start_count += 1
      end
  else
    until start_count == str.length
      str[start_count] = str[start_count].next
      start_count += 1
    end
  end
  str
end

#Start with def decrypt(str)
def decrypt(str)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	start_count = 0
	a_count = 0 
	until start_count == str.length
   a_count = alphabet.index(str[start_count])
	  str[start_count] = alphabet[a_count-=1 ]
		start_count += 1
  end
str
end

decrypt(encrypt("swordfish"))

#Ask the user if they want to create an encrypted or decrypt a password
#Then ask for the password
#Then decrypts or encrypts a password
choice = ""
  until choice == "Decrypt" || choice == "Encrypt"
    puts "Would you like to Decrypt or Encrypt a password?"
      choice = gets.chomp
      choice.capitalize!
  end
  	if choice == "Decrypt"
    	puts "What password do you want to decrypt?"
      		password = gets.chomp
      		decrypt(password)
  	elsif choice == "Encrypt"
    	puts "What password do you want to encrypt?"
      		password = gets.chomp
      		encrypt(password)
  	end
p password