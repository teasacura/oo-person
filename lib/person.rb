class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(points)
    @hygiene = points
    if @hygiene < 0
      return @hygiene = 0
    elsif @hygiene > 10
      return @hygiene = 10
    else
      return @hygiene
    end
  end

  def happiness=(points)
    @happiness = points
    if @happiness < 0
      return @happiness = 0
    elsif @happiness > 10
      return @happiness = 10
    else
      return @happiness
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4
    if @hygiene > 10
      @hygiene = 10
    end
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness = @happiness - 2
      friend.happiness = friend.happiness - 2
      return 'blah blah partisan blah lobbyist'
    when "weather"
      self.happiness = @happiness + 1
      friend.happiness = friend.happiness + 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end

  end

end
