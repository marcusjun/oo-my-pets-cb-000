require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  #Some methods described in owner_spec.rb
  #including #species and #name
  #are covered by the above attr_accessor
  #and/or attr_reader

  @@all=[]

  def self.all
    @@all
  end

  def initialize(species)
    @species=species

    @pets= {fishes: [], cats: [], dogs: []}

    @@all<<self

    #The following lines of code don't work
    #self.all<<self
    #self.all.class<<self
  end

  def self.count
    #Either line of code works
    #@@all.length
    self.all.length
  end

  def self.reset_all
    #Either line of code works
    #@@all.clear
    self.all.clear
  end

  def say_species
    "I am a #{@species}."

    #Don't use puts
    #puts "I am a #{@species}."
  end


  def buy_cat(name)
    new_cat=Cat.new(name)
    @pets[:cats]<<new_cat
  end

  def buy_dog(name)
    new_dog=Dog.new(name)
    @pets[:dogs]<<new_dog
  end

  def buy_fish(name)
    new_fish=Fish.new(name)
    @pets[:fishes]<<new_fish
  end

  def walk_dogs
    @pets[:dogs].each {|animal| animal.mood="happy"}
    #@pets{:dogs}.mood="happy"
    #@pets{:dogs}[0].mood="happy"
  end

  def play_with_cats
    @pets[:cats].each {|animal| animal.mood="happy"}
    #@pets{:cats}.mood="happy"
    #@pets{:cats}[0].mood="happy"
  end

  def feed_fish
    @pets[:fishes].each {|animal| animal.mood="happy"}
    #@pets{:fishes}.mood="happy"
    #@pets{:fishes}[0].mood="happy"
  end

  def sell_pets
    @pets[:dogs].each {|animal| animal.mood="nervous"}
    @pets[:cats].each {|animal| animal.mood="nervous"}
    @pets[:fishes].each {|animal| animal.mood="nervous"}
    #@pets[:dogs].mood="nervous"
    #@pets[:cats].mood="nervous"
    #@pets[:fishes].mood="nervous"


    @pets.each {|animal, animal_array| animal_array.clear}

    #This works too.
    #@pets.each do |animal, animal_array|
      #animal_array.clear
    #end

  end

  def list_pets
    #number_fish=@pets[:fishes].length
    #number_dogs=@pets[:dogs].length
    #number_cats=@pets[:cats].length

    #don't use puts
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    #"I have #{number_fish} fish, #{number_dogs} dog(s), and #{number_cats} cat(s)."

    #Alternative, wordy approach. don't know if it works
    #number_fish=0
    #number_dogs=0
    #number_cats=0

    #@pets.each do |animal,animal_array|
      #if animal==:fishes  #"fish"
        #number_fish=animal_array.length
      #elsif animal==:dogs #"dogs"
        #number_dogs=animal_array.length
      #elsif animal==:cats #"cats"
        #number_cats=animal_array.length
      #end
    #end


  end

end
