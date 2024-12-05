f = File.open("input", "r")

safe_reports = 0
f.each_line do |line|
  reports = line.split.map(&:to_i)
  direction = 1 if reports[0] < reports[1]
  direction = -1 if reports[0] > reports[1]
  next if reports[0] == reports[1]
  flag = true
  (reports.length - 1).times do |i|
    diff = reports[i + 1] - reports[i]
    if !(diff * direction > 0 and diff.abs <= 3 and diff != 0) then
      flag = false
      break
    end
  end  
  safe_reports += 1 if flag
end

puts(safe_reports)
