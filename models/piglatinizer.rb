class PigLatinizer

  def initialize
  end

  
  def piglatinize(input)
      words_array = input.split(' ') 
      pig_latin = words_array.map do |word| 
        parts = word.split(/([aeiou].*)/) 
        if word.chars.first.downcase == 'a' || word.chars.first.downcase == 'e' || word.chars.first.downcase == 'i'|| word.chars.first.downcase == 'o' || word.chars.first.downcase == 'u'
          word = "#{word}way"
        else
          word = parts[1..parts.length] << "#{parts[0]}ay"
          word.join('')
        end
        
      end
      latinized = pig_latin.join(' ')
      latinized
  end



end