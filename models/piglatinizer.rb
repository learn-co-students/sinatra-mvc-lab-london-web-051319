class PigLatinizer


    def piglatinize(text)
        words = text.split(" ")
        latinized = words.map {|word| pig_latinize_word(word)}
        latinized.join(" ")
    end

    def pig_latinize_word(word)
        if word[0] =~ (/[aeiou]/i)
            word = word + 'way'
        else parts = word.split(/([aeiou].*)/)
            first_part = parts[0]
            second_part = parts[1]
            word = second_part + first_part + 'ay'
        end
        word
    end

end