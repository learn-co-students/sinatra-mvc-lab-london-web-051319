class PigLatinizer


    def piglatinize(text)
        words = text.split(" ")
        latinized = words.map {|word| pig_latinize_word(word)}
        latinized.join(" ")
    end

    def pig_latinize_word(word)
        if word =~ (/\A[aeiou]/i)
            word = word + 'way'
        elsif word[0] != (/\A[^aeiou]/i)
            parts = word.split(/([aeiou].*)/)
            first_part = parts[0]
            second_part = parts[1]
            word = second_part + first_part + 'ay'
        end
        word
    end

end