require 'pry'
def float_to_binary(num)
    return 'Error' if num >= 1 || num <= 0
    res = '.'
    loop do
       r = num * 2
        break if num == 0 || res.length >= 32
        if r >= 1
            res << '1'
            num = r - 1
        else
            res << '0'
            num = r
        end
    end

    res
end

puts 'test'
binding.pry
float_to_binary(0.72)
