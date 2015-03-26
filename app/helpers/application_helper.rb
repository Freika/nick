module ApplicationHelper
  def delimited_numbers(number)
    number_with_delimiter(number, delimiter: ' ')
  end
end
