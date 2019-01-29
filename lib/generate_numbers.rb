module Generate_numbers

  def quarter_scores
    array_1_to_10 = []
    while array_1_to_10.count < 10 do
      lucky_number = rand(1..10)-1
      if !array_1_to_10.include?(lucky_number)
        array_1_to_10.push(lucky_number)
      end
    end
    return array_1_to_10
  end
  module_function :quarter_scores

  def create_coordinates
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
    return coordinates.shuffle!
  end
  module_function :create_coordinates

end
