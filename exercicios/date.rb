#!/bin/ruby

require 'json'
require 'stringio'



#
# Complete the 'preprocessDate' function below.
#
# The function is expected to return a STRING_ARRAY.
# The function accepts STRING_ARRAY dates as parameter.
#
def preprocessDate(dates)
  # Write your code here

  months = {
    'Jan'=> '01',
    'Feb'=> '02',
    'Mar'=> '03',
    'Apr'=> '04',
    'May'=> '05',
    'Jun'=> '06',
    'Jul'=> '07',
    'Aug'=> '08',
    'Sep'=> '09',
    'Oct'=> '10',
    'Nov'=> '11',
    'Dec'=> '12'
  }
  dates.each do |d|
      d = d.split(" ")
      month = months[d[1].to_s]
      puts month
      day = d[0].delete('a-z')
      if day.size == 1
        day = "0#{day}"
      end
      new_date = "#{d[2]}-#{month}-#{day}"
      puts new_date
  end
end

preprocessDate(['6st Mar 2020', '22th Apr 1999'])
