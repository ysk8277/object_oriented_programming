class Rover

  def initialize(x, y, d)
    @x = x
    @y = y
    @d = d
  end

  def turn_right
    if @d == "N"
      @d = "E"
    elsif @d == "E"
      @d = "S"
    elsif @d == "S"
      @d = "W"
    elsif @d == "W"
      @d = "N"
    end
  end

  def turn_left
    if @d == "N"
      @d = "W"
    elsif @d == "W"
      @d = "S"
    elsif @d == "S"
      @d = "E"
    elsif @d == "E"
      @d = "N"
    end
  end
  
  def move_forwrd
    if @d == "N"
      @y += 1
    elsif @d == "E"
      @x += 1
    elsif @d == "S"
      @y -= 1
    elsif @d == "W"
      @x -= 1
    end
  end
  
  def command(input)
    input.split("").each do |letter|
      if letter == "M"
        move_forwrd
      elsif letter == "L"
        turn_left
      elsif letter == "R"
        turn_right
      end
    end
    puts "#{@x},#{@y},#{@d}" 
  end

end

rover_1 = Rover.new(1, 2, "N")
rover_2 = Rover.new(3, 3, "E")

puts "Input Command Rover_1:"
input = gets.chomp.upcase 

rover_1.command("#{input}")

puts "Input Command Rover_2:"
input = gets.chomp.upcase

rover_2.command("#{input}")
