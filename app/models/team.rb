class Team 
  attr_accessor :name, :motto
  
  TEAMS = []
  
  def self.all 
    @TEAMS
  end
  
end