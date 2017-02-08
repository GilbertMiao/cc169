# Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the
# "compressed" string would not become smaller than the original string, your method should return
# the original string. You can assume the string has only uppercase and lowercase letters (a - z).
#
def compress_str(str)
    res = []
    count = 1
    str_chars = str.chars
    str_chars.each_with_index do |v, i|
        if str_chars[i + 1] == v
          count += 1
        else
          res << v + count.to_s
          count = 1
        end
    end
    res.join ''
end
