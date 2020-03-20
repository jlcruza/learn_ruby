class Book
# write your code here

    # Getter
    attr_reader :title

    def initialize()
    end

    # Setter
    def title=(name)
        little_words = ["and", "or", "the", "over", "to", "the", "a", "but", "by", "of", "from", "is", "on", "an", "in"]
        array = name.split

        result = ""
        array.length.times do |i|
            if (i == 0)
                result += "#{array[i].capitalize} "
            elsif (array[i] == "i")
                result += "I "
            elsif (little_words.include? array[i])
                result += "#{array[i]} "
            else
                result += "#{array[i].capitalize} "
            end
        end

        @title = result.strip

    end


end