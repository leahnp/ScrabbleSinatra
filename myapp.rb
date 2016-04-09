require 'sinatra'
require_relative 'lib/words_lib'


class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/score' do
    erb :score
  end

  post '/runMethod' do
    options = {
      "word" => params["word_to_score"]
    }
    @letter_word = Words.new(options)
    @hash = Words.score_letters(@letter_word.word)
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

  post '/score-many' do
    @word_list = Hash.new
    @words = params["all_words"]
    @word_array = @words["word"].split(" ")
    @word_array.each do |word|
      w = Test.new(word)
      score = Test.score(w.word)
      @word_list["#{word}"] = score
    end
    erb :score_many
  end

  run!
end