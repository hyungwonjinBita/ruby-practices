socre = ARGV[0]
scores = socre.split(',')
shots = []
scores.each do |s|
  if s == 'X'
    shots << 10
    shots << 0
  else
    shots << s.to_i
  end
end

frames = []
shots.each_slice(2) do |s|
  frames << s
end

point = 0
num = 0
frames.each do |frame|
  if num < 9
    if frame[0] == 10
      if frames[num + 1][0] == 10
        point += 10 + frames[num + 1][0] + frames[num + 2][0]
      else
        point += 10 + frames[num + 1].sum
      end
    elsif frame.sum == 10
      point += 10 + frames[num + 1][0]
    else
      point += frame.sum
    end
  else
    point += frame.sum
  end
  num += 1
end
puts point
