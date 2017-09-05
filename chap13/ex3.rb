class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10
    @stuffInIntestine =  0

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private


  def hungry?

    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0

      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end



puts "What's your baby dragon name?"
name = gets.chomp.capitalize
puts "Oh yeah! Now I remember... little #{name}"
dragon = Dragon.new (name)

while true
  puts "\n***** What would you like to do? *****"
  puts "1. Feed #{name}"
  puts "2. Walk your #{name}"
  puts "3. Put #{name} to bed"
  puts "4. Toss #{name}"
  puts "5. Rock #{name}"
  puts "6. Quit"
  puts "**************************************"
  print "Please input the number: "
  input = gets.chomp
  case input
  when "6", "quit", "exit"
    puts "\nYou killed your Dragon.. Shame on you"
    exit
  when "1", "feed"
    puts
    dragon.feed
  when "2", "walk"
    puts
    dragon.walk
  when "3", "bed"
    puts
    dragon.putToBed
  when "4", "toss"
    puts
    dragon.toss
  when "5", "rock"
    puts
    dragon.rock
  else
    puts "\nThere is no such an option please pick one from the following.."
  end
end
