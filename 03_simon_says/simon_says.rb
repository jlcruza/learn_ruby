#write your code here
def echo(msg)
    msg
end

def shout(msg)
    msg.upcase
end

def repeat(msg, num=2)
    res = msg
    (num - 1).times do
        res += " #{msg}"
    end
    return res
end

def start_of_word(word, len)
    word[0..len-1]
end

def first_word(words)
    word = words.split
    return word[0]
end

def titleize(message)
    little_words = ["and", "or", "the", "over", "to", "the", "a", "but", "by", "of", "from", "is", "on"]
    array = message.split

    res = ""

    array.length.times do |i|
        if(i == 0)
            res += array[i].capitalize
        elsif(little_words.include? array[i])
            res += " #{array[i]}"
        else
            res += " #{array[i].capitalize}"
        end
    end

    res.strip
end