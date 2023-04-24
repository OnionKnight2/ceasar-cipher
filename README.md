# ceasar-cipher
Implementing one of the simplest and most widely known encryption techniques

Goal is to receive a string, shift every letter down the alphabet shift number of times and return the changed string
Build hashes containing every downcase and upcase letter with their shifted letter
Use each.with_index.to_h to convert a range to hash and then merge those hashes
Replace default values with shifted characters with wrapping from z to a
Use #ord to find ascii value and #chr to return it to character
Convert string to array
Go through every character and replace it it's string
Convert array back to string