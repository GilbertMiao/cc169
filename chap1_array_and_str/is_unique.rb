# implement an algorithm to determine if a string has all unique characters.
# you cannot use additional data structure.

def str_is_unique?(_str)
    # str.chars.compact == str.chars
    unique = ''
    string.chars do |char|
        unique << char if unique.include?(char) == false
    end
    string.length == unique.length ? true : false
end
