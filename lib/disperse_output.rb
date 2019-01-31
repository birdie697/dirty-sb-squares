module Disperse_output

  def how_to_play(current_time)
    output  = "Greetings and salutations!\n"
    output += "The current time is:  #{current_time}\n"
    output += "\n"
    output += "You will be prompted to enter a name.\n"
    output += "You will be prompted to enter the number of squares that you want\n"
    output += "This will repeat until all squares of the 10x10 grid have been\n"
    output += "assigned to a name.\n"
    output += "\n"
    output += "The New England Patriots (NE) scores are across the top.\n"
    output += "The Los Angeles Rams (LA) scores are along the side\n"
    output += "\n"
    output += "There is a winner for each quarter.  Take the ones digit of the\n"
    output += "Patriots score across the top, pair it with the ones digit of the\n"
    output += "Rams score, locate the name in that cell and that is the winner!\n"
    output += "\n"
    output += "Good luck! Beat LA!\n"
    output += "\n"
    return output
  end
  module_function :how_to_play

  def available_squares(count)
    output = "The count for available squares is now #{count}\n"
    output += "\n"
    open_file_append(output)
    return output
  end
  module_function :available_squares

  def row_and_column_headers(i)
    case i
    when 0
      output =  "LA".ljust(6) + "NE>>".ljust(6) + "Q1".ljust(4)
    when 1
      output = "\\/".ljust(12) + "Q2".ljust(4)
    when 2
      output =  "\\/".ljust(12) + "Q3".ljust(4)
    when 3
      output = "Q1".ljust(4) + "Q2".ljust(4) + "Q3".ljust(4) + "Q4".ljust(4)
    end
    open_file_print_append(output)
    return output
  end
  module_function :row_and_column_headers

  def open_file_write(text)
    File.open("#{Constants::FILE_NAME}", "w") do |file|
      file.puts "#{text}"
    end
  end
  module_function :open_file_write

  def open_file_append(text)
    File.open("#{Constants::FILE_NAME}", "a") do |file|
      file.puts "#{text}"
    end
  end
  module_function :open_file_append

  def open_file_print_append(text)
    File.open("#{Constants::FILE_NAME}", "a") do |file|
      file.print "#{text}"
    end
  end
  module_function :open_file_print_append


end
