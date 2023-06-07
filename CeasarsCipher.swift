// Declare and initalize variables and constants
let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var secretMessage: String = "catsrule"
var encryptedMessage: [Character] = []

// Convert message to array of characters
var message = Array(secretMessage)

// Iterate through characters in message
for i in 0 ..< message.count{
  // Iterate through characters in alphabet
  for j in 0 ..< alphabet.count{
    // Find current message character in alphabet
    if message[i] == alphabet[j]{
      /*shift 3 characters to encrypt and append to return value
        to avoid Index out of range use modulus
      */
      encryptedMessage.append(alphabet[(j+3)%26]) 
    }//end if
  }//end nested for
}//end for 

// print||return encrytped message
print(encryptedMessage)
