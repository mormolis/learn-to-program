class OrangeTree
  #initialize
  def initialize
    @height = 0.5
    @orange_count = 0
    @years_old =0
    puts "A beautiful orange tree has been planted. Its height is #{@height} at the moment and it has #{@orange_count} fruits on it."
  end

  #height
  def height
    return height
  end
  #one_year_passes : ages the tree one year, grows taller a | after a few years the tree dies
  def one_year_passes
    puts "One year has passed piecefully"
    @years_old+=1
    if @height < 6
      @height = @height*1.65
    else
      @height = @height + 0.1
    end
    puts "Your tree is now #{@years_old} years old and #{@height} tall"
    if @years_old == 2
      puts "Your tree started growing fruits"
      @orange_count = produce_fruits()
      orange_count()
    elsif @years_old > 2 && @years_old<50
      puts "#{orange_count} fruits went down to earth"
      @orange_count = produce_fruits()
    elsif @years_old >=50
      p a= rand(2)
      if a == 1
        puts "The time has come... RIP beautiful tree!"
        exit
      else
        puts "#{orange_count} fruits went down to earth"
        @orange_count = produce_fruits()
      end
    else
      puts "Be patient..."
    end
  end

  def orange_count()
    return @orange_count
  end



  def pick_an_orange()

    if @orange_count > 0
      puts "It looks delicious!!!"
      @orange_count -=1
    else
      puts "There is nothing to be picked.."
    end
  end

  private
  def produce_fruits()
    if @years_old <=5
      @orange_count = @years_old*5 + (@years_old/2)*rand(@years_old+1)

    else
      @orange_count = @years_old + rand(15)
    end
    return @orange_count
  end
end

my_tree = OrangeTree.new
my_tree.pick_an_orange
my_tree.one_year_passes
my_tree.one_year_passes
puts my_tree.orange_count
my_tree.pick_an_orange
puts my_tree.orange_count
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
