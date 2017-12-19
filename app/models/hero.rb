class Hero
  attr_accessor :name, :power, :biography
  
  @@heroes = []
  
  def self.all 
    @@heroes
  end
  
  def self.clear 
    @@heroes = []
  end
end