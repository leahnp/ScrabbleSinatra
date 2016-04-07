require 'sinatra'
require_relative 'lib/words_lib'


class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/score' do
    erb :score
  end

  post '/score' do
    @word = Words.new(params["all_words"])
    @score = Words.score("#{@word.word}")
    erb :score
  end

  get '/score-many' do
    erb :score_many
  end

  # post '/score-many' do
  #   @word_list = Words.new(params["all_words"])
  #   # @test = @word_list.word.split(" ")
  #   @score = Words.score("#{@word_list.word}")
  #   erb :score_many
  # end

  post '/score-many' do
  end
  
  run!
end