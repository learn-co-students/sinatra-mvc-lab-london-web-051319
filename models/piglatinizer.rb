class PigLatinizer

  def piglatinize(user_input)
    storage = []
    array = user_input.split(" ")

    array.each do |word|
      vowels = word.downcase.index(/[aeiou]/)
      # binding.pry
      strlen = word.length
      # binding.pry

      if vowels == 0
        storage << "#{word}" + "way"
        #binding.pry
      else
        pseudo_prefix = word.slice(vowels, strlen)
        pseudo_suffix = word.slice(0, vowels)
        #binding.pry

        storage << "#{pseudo_prefix}#{pseudo_suffix}ay"
        #binding.pry
      end
    end

    if storage.size > 1
      storage.join(' ')
      #binding.pry
    else
      storage[0]
    end
  end
end
