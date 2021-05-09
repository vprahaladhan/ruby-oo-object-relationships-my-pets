class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = 'human'
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def buy_cat(name)
    # cat = Cat.all.find{|cat| cat.name == name}
    # cat ? cat.owner = self : Cat.new(name, self)
    Cat.new(name, self)
  end

  def feed_cats
    self.cats.each{|cat| cat.mood = 'happy'}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_dog(name)
    # dog = Dog.all.find{|dog| dog.name == name}
    # dog ? dog.owner = self : Dog.new(name, self)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each{|dog| dog.mood = 'happy'}
  end

  def list_pets
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end

  def pets
    self.cats + self.dogs
  end

  def sell_pets
    self.pets.each do |pet| 
      pet.mood = 'nervous'
      pet.owner = nil
    end
  end
end