f = File.open("input", "r")

left_list = []
right_list = []
f.each_line do |line|
  a, b = line.split.map(&:to_i)
  left_list << a
  right_list << b
end

freq = Hash.new

right_list.each do |ele|
  if freq.key?(ele)
    freq[ele] = freq[ele] + 1
  else
    freq[ele] = 1
  end
end

similarity_score = 0
left_list.each do |ele|
    if freq.key?(ele) then
      similarity_score += freq[ele] * ele
    end
end

puts similarity_score

