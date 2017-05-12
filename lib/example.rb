class Example
  # This file contains simple general Ruby examples.
  def addNumbers(in1, in2)
    ret = in1 + in2
    return ret
  end

  def calculateVolume(height, width, length)
    volume = height * width * length
    puts 'Volume calculated to be: ' + volume.to_s
    return volume
  end

  def checkTemp(temperatureCelcius)
    if (temperatureCelcius > 20)
      return "Weather is hot."
    else
      return "Weather is not hot."
    end
  end
end

@myFloat=3.214
@myString='Hello, Owen'
@shouldWePrintVariables=true
@myArray = [1, 2, 3, 4]
@myEmptyArray = []
@myHash = { 0 => @myString, 1=> @myArray[1] }

myExample = Example.new

result = myExample.addNumbers(1, 2)
puts "Result is: " + result.to_s

weather = myExample.checkTemp(10)
puts weather

def printVariables
  if(@shouldWePrintVariables == true)
    puts 'pi =: ' + @myFloat.to_s

    if (@myEmptyArray.count == 0)
      puts 'myEmptyArray is empty.'
    end

    puts 'First element in myArray = ' + @myArray[0].to_s
    @myArray[1] = 1111
    puts 'Second element in myArray = ' + @myArray[1].to_s

    @myArray.each do |i|
      puts 'myArray element: ' + i.to_s
    end

    @myHash.each do |i, j|
      puts 'myHash element: ' + i.to_s + ' is set to: ' + j.to_s
    end

    h = 10; w = 5;l = 20
    myExample2 = Example.new
    myVolume = myExample2.calculateVolume(h, w, l)
    print 'Height, width, length = ' + h.to_s + ', ' + w.to_s + ', ' + l.to_s + '. '
    puts 'Volume = ' + myVolume.to_s

    number = 101
    result = (number < 100) ? true : false
    puts 'Is ' + number.to_s + ' less than 100: ' + result.to_s
  end
end

printVariables
