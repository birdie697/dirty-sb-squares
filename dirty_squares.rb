def set_values
  array_1_to_10 = []
  while array_1_to_10.count < 10 do
    lucky_number = rand(1..10)-1
    if !array_1_to_10.include?(lucky_number)
      array_1_to_10.push(lucky_number)
    end
  end
  return array_1_to_10
end

def get_name
  print "Please enter a name:  "
  name = gets.chomp
  return name
end

def get_squares_count
  print "Please enter how many squares you want:  "
  squares_count = gets.chomp.to_i
  return squares_count.to_i
end

rows_and_columns = [
  "Q1 NE",
  "Q2 NE",
  "Q3 NE",
  "Q4 NE",
  "Q1 LA",
  "Q2 LA",
  "Q3 LA",
  "Q4 LA"
]

rows_and_columns_and_values = {}

# puts "#{rows_and_columns}"

i=0
while i < rows_and_columns.count do
  rows_and_columns_and_values[rows_and_columns[i]] = set_values
  i += 1
end

coordinates = []
x = 1
10.times do
  y = 1
  10.times do
    coordinates.push([x,y])
    y += 1
  end
  x += 1
end

# puts "#{coordinates}"

coordinates.shuffle!

squares_and_name = {}

while coordinates.count > 0 do
  name = get_name
  squares_count = get_squares_count

  while squares_count > coordinates.count do
    puts "You cannot purchase that many squares!  Try again."
    squares_count = get_squares_count
  end

  squares_count.times do
    squares_and_name[coordinates.pop] = name
  end
  puts "The count for available squares is now #{coordinates.count}"
end

# squares_and_name.sort.map do |key, value|
#   puts "#{key} #{value}"
# end


for i in 0..3
  print "#{rows_and_columns[i]}: ===>".ljust(16)
  for j in 0..9
    print "#{rows_and_columns_and_values[rows_and_columns[i]][j]}".ljust(12)
  end
  puts ""
end


i=1
squares_and_name.sort.map do |key, value|
  if i % 10 == 1
    print "#{rows_and_columns_and_values[rows_and_columns[4]][(i/10)]}".ljust(4)
    print "#{rows_and_columns_and_values[rows_and_columns[5]][(i/10)]}".ljust(4)
    print "#{rows_and_columns_and_values[rows_and_columns[6]][(i/10)]}".ljust(4)
    print "#{rows_and_columns_and_values[rows_and_columns[7]][(i/10)]}".ljust(4)
  end
  print "#{value.ljust(12)}"
  if i % 10 == 0
    puts ""
  end
  i += 1
end

# for x in 1..10
#   for y in 1..10
#     print "#{value}  "
#   end
#   puts ""
# end
