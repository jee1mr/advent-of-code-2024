f = File.open("input", "r")

left_list = []
right_list = []
f.each_line do |line|
  a, b = line.split.map(&:to_i)
  left_list << a
  right_list << b
end

left_list.sort!
right_list.sort!

diff_sum = 0

for i in 0..left_list.length - 1 do
  diff_sum += (left_list[i] - right_list[i]).abs
end

puts(diff_sum)

