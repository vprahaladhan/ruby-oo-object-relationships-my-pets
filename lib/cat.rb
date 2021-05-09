class Cat
  # code goes here
  @@all = []

  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name, owner)
    # if !@@all.find{|cat| cat.name == name} then 
      @name = name
      @owner = owner
      @mood = 'nervous'
      @@all << self
    # end
  end

  # def owner=(owner)
  #   self.owner = owner
  # end

  def self.all
    @@all
  end
end