class Hero
  attr_accessor :name, :power, :bio 
  
  @@heroes = []
  
  def self.all 
    @heroes
  end
  
  def self.clear 
    @@heroes = []
  end
end