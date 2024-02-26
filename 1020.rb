def age_in_days(input)
  years = input.to_f / 365
  puts years

  if years % 1 == 0
    return """
    #{years} ano(s)
    0 mes(es)
    0 dia(s)
    """
  end
  days_left = input - (365 * years.floor)

  puts "  #{days_left} = #{input} - (365 * #{years.floor})"
  puts "___"
  puts days_left

  months = days_left.to_f / 30
  puts months
  if months % 1 == 0
    return """
    #{years.floor} ano(s)
    #{months.floor} mes(es)
    0 dia(s)
    """
  else
    days = days_left - (12 * months.floor)

    return """
    #{years.floor} ano(s)
    #{months.floor} mes(es)
    #{days} dia(s)
    """
  end




end

days = 361
puts(days)
puts age_in_days(days)
