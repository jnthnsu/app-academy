# PHASE 2
def convert_to_int(str)
  Integer(str)
  rescue StandardError => e
    p "Can't convert #{str} to an integer"
end


# PHASE 3
FRUITS = ["apple", "banana", "orange"]


def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    puts "Oh, thanks for the coffee but I want a fruit!"
    feed_me_a_fruit
  else
    puts "I hate you!!!"
    raise StandardError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime


    if yrs_known < 5
      puts "less than 5"
      raise StandardError
    elsif name.empty?
      puts "who is he/she?"
      raise StandardError
    elsif fav_pastime.empty?
      puts "you like nothing?"
      raise StandardError
    end
      
    # puts "less than 5" && raise StandardError if yrs_known < 5
    # puts "who is he/she?" && raise StandardError if name.empty?
    # puts "you like nothing?" &&raise StandardError if fav_pastime.empty?


  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


