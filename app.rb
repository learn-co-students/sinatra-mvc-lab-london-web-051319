require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    str = params[:user_phrase]
    latizer = PigLatinizer.new
    @piglatin_phrase = latizer.piglatinize(str)
    @piglatin_phrase
  end
end
