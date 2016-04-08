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

  post '/runMethod' do
    @word = Words.new(params["all_word[word_to_score]"])
    @hash = Words.score_letters(params["#{@word.word}"])
    # shop.add_to_cart(params[:product], params[:quantity])
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
    @word_list = Hash.new
    @words = params["all_words"]
    # @words = words.value
    @word_array = @words["word"].split(" ")

    @word_array.each do |word|
      # w = Words.new("#{word}")
      # w = Words.new(params["#{word}"])
      w = Test.new(word)
      score = Test.score(w.word)
      @word_list["#{word}"] = score
    end
    erb :score_many
  end

  run!
end