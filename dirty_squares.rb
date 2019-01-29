require_relative "lib/collect_input"
require_relative "lib/generate_numbers"
require_relative "lib/disperse_output"

quater_team = [
  "Q1 NE",
  "Q2 NE",
  "Q3 NE",
  "Q4 NE",
  "Q1 LA",
  "Q2 LA",
  "Q3 LA",
  "Q4 LA"
]

quater_team_scores = {}

i=0
while i < quater_team.count do
  quater_team_scores[quater_team[i]] = Generate_numbers.quarter_scores
  i += 1
end

coordinates = Generate_numbers.create_coordinates

squares_and_name = {}

while coordinates.count > 0 do
  name = Collect_input.get_name
  squares_count = Collect_input.get_squares_count

  while squares_count > coordinates.count do
    squares_count = Collect_input.try_again
  end

  squares_count.times do
    squares_and_name[coordinates.pop] = name
  end
  puts "#{Disperse_output.available_squares(coordinates.count)}"
end

for i in 0..3
  print "#{Disperse_output.row_and_column_headers(i)}"
  for j in 0..9
    print "#{quater_team_scores[quater_team[i]][j]}".ljust(12)
  end
  puts ""
end

i=1
squares_and_name.sort.map do |key, value|
  if i % 10 == 1
    for j in 4..7
      print "#{quater_team_scores[quater_team[j]][(i/10)]}".ljust(4)
    end
  end
  print "#{value.ljust(12)}"
  if i % 10 == 0
    puts ""
  end
  i += 1
end
