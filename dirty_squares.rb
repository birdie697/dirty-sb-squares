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
  return squares_count
end

rows_and_columns = [
  "Q1 Patriots row numbers",
  "Q2 Patriots row numbers",
  "Q3 Patriots row numbers",
  "Q4 Patriots row numbers",
  "Q1 Rams column numbers",
  "Q2 Rams column numbers",
  "Q3 Rams column numbers",
  "Q4 Rams column numbers"
]

loop_count = rows_and_columns.count
rows_and_columns.shuffle!
rows_and_columns_and_values = {}

# puts "#{rows_and_columns}"

loop_count.times do
  column_configuration = rows_and_columns.pop
  rows_and_columns_and_values[column_configuration] = set_values
end

# rows_and_columns_and_values.sort.map do |key, value|
#   puts "#{key} #{value}"
# end

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

  squares_count.to_i.times do
    squares_and_name[coordinates.pop] = name
  end
  puts "The count for available squares is now #{coordinates.count}"
end

squares_and_name.sort.map do |key, value|
  puts "#{key} #{value}"
end
