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
when 7
	p "土曜日"
else
	p "error"
end

def calculation (y, m, d)
  result = (y + (y/4) - (y/100) + y/400 + (13*m+8)/5 + d) % 7
end
