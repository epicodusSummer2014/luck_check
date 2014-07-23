def luck_check(number)
    if number.to_i > 0
    array = number.to_s.split("").map {|x| x.to_i}
    half_array_length = array.length/2
    if number.odd?
      array[0..(half_array_length-1)].inject(0){|sum,x| sum +x} == array[half_array_length+1..array.length-1].inject(0){|sum2,x| sum2 +x}
    else
      array[0..(half_array_length-1)].inject(0){|sum,x| sum +x} == array[half_array_length..array.length-1].inject(0){|sum2,x| sum2 +x}
    end
  else
    false
  end
end
