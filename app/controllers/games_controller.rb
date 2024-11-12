require "open-uri"

class GamesController < ApplicationController
  def new
    alphabet = (?a..?z).to_a
    length = 10
    @letters = alphabet.sample(length)
  end

  def score
    @params = params[:word]
    url = "https://dictionary.lewagon.com/#{@params}"
    @word = JSON.parse(URI.parse(url).read)
    @word_check = @word["found"]

    
  end
end
