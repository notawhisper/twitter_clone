class WordsController < ApplicationController
  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
  end
  private

  def word_params
    params.require(:word).permit(:content)
  end
end
