# a method to replace all spaces in a string with '%20'.
def urlify(str, len)
  str.gsub!(/\s/, '%20')
end
