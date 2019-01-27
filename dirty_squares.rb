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

rows_and_columns = [
  "Q1 Patriots row numbers",
  "Half Time Patriots row numbers",
  "Q3 Patriots row numbers",
  "Final Score Patriots row numbers",
  "Q1 Rams column numbers",
  "Half Time Rams column numbers",
  "Q3 Rams column numbers",
  "Final Score Rams column numbers"
]

loop_count = rows_and_columns.count
rows_and_columns_shuffled = rows_and_columns.shuffle

loop_count.times do
  column_configuration = rows_and_columns_shuffled.pop
  puts "#{column_configuration}: #{set_values}"
end
