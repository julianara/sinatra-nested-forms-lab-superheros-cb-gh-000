require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :team
    end
    
    
    
          @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @super_heroes = members.collect do |member_params|
        SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
      end
      erb :team
    end
    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @heroes = members.collect do |member_params|
        Hero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
      end
      erb :team
    end

end
