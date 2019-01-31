require_relative "generate_numbers"


module Constants

  current_time = Generate_numbers.get_current_time
  CURRENT_TIME = current_time
  FILE_NAME = "output.#{current_time}.txt"

end
