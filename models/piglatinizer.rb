class PigLatinizer
  def piglatinize(string)
    result = string.split(' ').map do |str|
      case
      when str.end_with?("ay")
        "ay" + str
      when str.match?(/^(?i)[aiueo]/)
        str + "way"
      else
        str.slice!(/(?i)[aiueo]+.*/) + str + "ay"
      end
    end
    result.join(' ')
  end
end
