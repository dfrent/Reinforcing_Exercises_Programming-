emotions = {
  :happiness => 2,
  :sadness => 1,
  :delusion => 2,
  :hunger => 3,
  :bliss => 3,
  :anger => 1,
  :stress => 2,
}

class Person

  def initialize(name, emotions_hash)
    @name = name
    @emotions = emotions_hash
  end

##----INSTANCE-----
  def name
    @name
  end

  def emotions
    @emotions
  end

  def emotion_levels
    puts emotions
    emotions.each do |key, value|
      if value == 3
        puts "#{name} is feeling a high amount of #{key}."
      elsif value == 2
        "#{name} is feeling a medium amount of #{key}."
      elsif value == 1
        "#{name} is feeling a low amount of #{key}."
      else
        "enter a number find you emotion level"
      end
    end
  end
##----INSTANCE----
end

greg = Person.new("Greg", emotions)

puts greg.emotion_levels
