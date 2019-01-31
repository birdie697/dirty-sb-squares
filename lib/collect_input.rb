require_relative "disperse_output"
require_relative "constants"


module Collect_input

  def get_name
    text_string = "Please enter a name:  "
    print "#{text_string}"
    name = gets.chomp
    Disperse_output.open_file_append("#{text_string}#{name}")
    return name
  end
  module_function :get_name

  def get_squares_count
    text_string = "Please enter how many squares you want:  "
    print "#{text_string}"
    squares_count = gets.chomp.to_i
    Disperse_output.open_file_append("#{text_string}#{squares_count}\n")
    return squares_count.to_i
  end
  module_function :get_squares_count

  def try_again
    text_string = "You cannot purchase that many squares!  Try again."
    puts "#{text_string}"
    Disperse_output.open_file_append("#{text_string}")
    squares_count = Collect_input.get_squares_count
    return squares_count
  end
  module_function :try_again

end
