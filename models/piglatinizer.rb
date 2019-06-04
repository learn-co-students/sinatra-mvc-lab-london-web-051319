class PigLatinizer

  def piglatinize(str)

    arr = str.split(" ")
    new_arr = []
    arr.each do |word|
      vowel_index = word.downcase.index(/[aeiou]/)
      len = word.length

      if vowel_index == 0
        new_arr << "#{word}way"
      else
        other_words = word.slice(vowel_index, len)
        one_less = vowel_index - 1
        beginning_words = word.slice(0, vowel_index)

        new_arr << "#{other_words}#{beginning_words}ay"
      end
    end

    val = new_arr.size > 1 ? new_arr.join(" ") : new_arr[0]
    val
  end

end
