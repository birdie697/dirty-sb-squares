module Collect_input

  def get_name
    print "Please enter a name:  "
    name = gets.chomp
    return name
  end
  module_function :get_name

  def get_squares_count
    print "Please enter how many squares you want:  "
    squares_count = gets.chomp.to_i
    return squares_count.to_i
  end
  module_function :get_squares_count

  def try_again
    puts "You cannot purchase that many squares!  Try again."
    squares_count = Constants.get_squares_count
    return squares_count
  end
  module_function :try_again

end
