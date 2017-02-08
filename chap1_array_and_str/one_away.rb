# given two strings, check if they are one edit(or 0 edits) away.
#
def one_away(str, str2)
  return false if str.length - str2.length >= 2
  return true if str == str2
end

private

def one_edit_away(str, str2)
  zip_str = str.chars.zip(str2.chars)
  diff_num = 0
  zip_str.each { |p| diff_num += 1 if p[0] != p[-1] }
  diff_num == 1
end

def one_insert_away(short, long)
  short.chars.each_with_index do |v, i|
    return false unless (v == long.chars[i] || long.chars[i+1])
  end
end
