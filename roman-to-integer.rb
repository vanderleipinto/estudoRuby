# https :/ / leetcode.com / problems / roman - to - integer /
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  numerals = {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}
  ret = []
  arr = s.split("")
  arr.each_cons(2) do |item|
    ret << if (item[0] == "I" && item[1] == "V") || item[0] == "I" && item[1] == "X"
      -1
    elsif (item[0] == "X" && item[1] == "L") || item[0] == "X" && item[1] == "C"
      -10
    elsif (item[0] == "C" && item[1] == "D") || item[0] == "C" && item[1] == "M"
      -100
    else
      numerals.values_at(item[0].to_sym)
    end
  end
  ret << numerals.values_at(arr.last.to_sym)
  ret.flatten.sum
end
