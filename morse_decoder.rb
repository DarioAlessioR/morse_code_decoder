# Morse codes for letters:

@code = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'C',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

# method to decode a letter:
def decode_char(char)
  @code[char]
end

# method to decode a word:

def decode_word(word)
  result = ''
  word.split(/ /).each { |char| result += decode_char(char) }
  result
end

def decode_phrase(phrase)
  result = ''
  phrase.split(/   /).each { |word| result += "#{decode_word(word.strip)} " }
  result.chop
end

puts decode_phrase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
