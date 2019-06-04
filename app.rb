require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    gen_string = params[:user_phrase]
    new = PigLatinizer.new
    @result = new.piglatinize(gen_string)
    @result
  end
end
