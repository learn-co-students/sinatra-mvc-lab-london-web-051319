class PigLatinizer

  def piglatinize(words)
    consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
    #vowels = ['a','e','o','u','i']
    words_arr = words.split
    new_words = []

    words_arr.each do |word|
      i = 0
      while (consonants.include?(word[i].downcase))
        i += 1
      end

      if i == 0
        new_words << (word + "way")
      else
        new_words << (word[i..-1] + word[0...i] + "ay")
      end
    end

    new_words.join(" ")
  end
end