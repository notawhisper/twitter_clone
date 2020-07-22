class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    @word.save
  end

  private
  def word_params
    params.require(:word).permit(:content)
  end
end
