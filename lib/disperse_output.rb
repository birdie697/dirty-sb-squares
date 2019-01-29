module Disperse_output

  def available_squares(count)
    output = "The count for available squares is now #{count}\n"
    output += "\n"
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
    return output
  end
  module_function :row_and_column_headers


end
