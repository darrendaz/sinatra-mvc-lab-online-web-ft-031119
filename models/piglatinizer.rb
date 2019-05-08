class PigLatinizer

    def piglatinize(string)
        a = string.split(" ")
        b = a.map {|word| piglatinize_word(word)}
        b.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0]
        if first_letter.match(/[aeiouAEIOU]/)
            "#{word}way"
        else
            leading_consonants = word.match(/^[^aeiouAEIOU]+/).to_s
            beginning = word.sub(leading_consonants, "")
            "#{beginning + leading_consonants}ay"
        end
    end


end