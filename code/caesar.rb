# This is for Odin Project's Caesar Cipher challenge
# Link: https://www.theodinproject.com/lessons/ruby-caesar-cipher

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def caesar(string, key = 0)
 return string if key == 0
 return string if string.empty?

  result = []
  string.split("").each do |character|
    unless ALPHABET.scan(character.downcase).empty?
      if character == character.upcase
        character = ALPHABET[(ALPHABET.index(character.downcase) + key) % ALPHABET.length].upcase
      else
        character = ALPHABET[(ALPHABET.index(character.downcase) + key) % ALPHABET.length]
      end
    end
    result << character
  end
  result.join
end

# caesar("abcABC!", 1)
# caesar("xyz!", 3)
# caesar("", 0)

# Initial result, before optimizing
# def caesar(string, key = 0)
#   # Take string, divide it into letters
#   # Check if it's a letter, otherwise do not change it (number, symbol)
#   # Then, find their position in the alphabet
#   # If position is greater, module 26 to get back to the beginning
#   # Then, increase the index by key
#   # Find the corresponding letter in alphabet
#   # Iterate over the string

#   input = string.split("")
#   result = []

#   input.each do |character|
#     # Run cipher only for letters, for symbols and numbers, just add them to the result
#     unless ALPHABET.scan(character.downcase).empty?
#       # Remember the case
#       character_is_uppercase = true if character == character.upcase

#       # Find character's position in the alphabet
#       character_position = ALPHABET.index(character.downcase)

#       # Update position
#       new_character_position = (character_position + key) % ALPHABET.length
#       character = ALPHABET[new_character_position]

#       # Apply case
#       character.upcase! if character_is_uppercase
#     end
    
#     # Add to output string
#     result << character
#   end
  
#   puts "This is the input:\t" << string
#   puts "This is the output:\t" << result.join

#   result.join
# end