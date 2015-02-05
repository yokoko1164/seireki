def calculation (y, m, d)
  if m <= 2
    m += 12; y -= 1
  end

  j = (y / 100).ceil
  k = y % 100

  result = (d + (((m + 1) * 26) / 10).ceil + k + (k / 4).ceil + (j / 4).ceil + 5 * j) % 7

end

p "西暦"
y = gets.to_i
m = gets.to_i
d = gets.to_i
h = calculation(y,m,d)

case h
when 1
	p "日曜日"
when 2
	p "月曜日"
when 3
	p "火曜日"
when 4
	p "水曜日"
when 5
	p "木曜日"
when 6
	p "金曜日"
when 0
	p "土曜日"
else
	p "error"
end
