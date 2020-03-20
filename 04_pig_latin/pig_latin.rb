#write your code here
def translate(message)
    vowel = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
    special_case = "qu"
    pig_latin = "ay"

    result = ""
    array = message.split
    array.length.times do |index|

        if(vowel.include? array[index][0])
            # Start with vowel
            result += "#{array[index] + pig_latin} "

        else
            # Start with consonant
            letters = array[index].split("")
            while(not vowel.include? letters[0])

                # Check 'qu'
                if(letters[0].downcase == "q" and letters[1].downcase == "u")
                    letters.shift()
                    letters.shift()
                    letters << "q"
                    letters << "u"

                else
                    # Move consonant to the end
                    first = letters[0]
                    letters.shift()
                    letters << first

                end

            end

            # Array to string
            word = ""
            letters.length.times do |i|
                word += letters[i]
            end

            result += "#{word + pig_latin} "

        end
    end

    return result.strip

end