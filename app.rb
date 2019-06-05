require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get "/" do

    erb :user_input

  end

  post "/piglatinize" do
    pl = PigLatinizer.new
    @original_text = params[:user_phrase]
    @new_text = pl.piglatinize(@original_text)
    erb :show

  end

end
