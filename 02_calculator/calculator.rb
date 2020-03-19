#write your code here
def add(first, second)
    first + second
end

def subtract(first, second)
    first - second
end

def sum(arr)

    total = 0;
    arr.length.times do |i|
        total += arr[i]
    end

    total

end

def multiply(arr)

    total = 1;
    arr.length.times do |i|
        total *= arr[i]
    end

    total
end

def power(base, pow)

    result = 1
    pow.times do
        result *= base
    end

    result

end

def factorial(num)

    if(num == 0 or num == 1)
        return 1
    elsif
        res = 1
        while num > 1
            res *= num
            num -= 1
        end

        return res
    end
end