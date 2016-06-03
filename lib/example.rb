# Simple general Ruby experiments
input1=4
input2=10
@temperatureCelcius=15

def test1(input1, input2)
  ret = input1 + input2
  return ret
end

def checkTemp()
  if (@temperatureCelcius > 20)
    puts "Weather is hot."
  else
    puts "Weather is not hot."
  end
end

result = test1(input1, input2)
puts "Result is: " + result.to_s

checkTemp
