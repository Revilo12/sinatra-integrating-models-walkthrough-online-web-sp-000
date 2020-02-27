require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end
end
