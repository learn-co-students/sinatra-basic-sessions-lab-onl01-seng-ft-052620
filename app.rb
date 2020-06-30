require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        enable :sessions 
        set :session_secret, "uhdhdysgyhuegie8tw32782rnfhsalsdggsuag8367" 
    end 

    get '/' do 
        @session = session 
        erb :index 
    end 

    post '/checkout' do 
        session['item'] = params[:item]
    end 
end