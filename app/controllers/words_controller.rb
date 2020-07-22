class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    if params[:back]
      render :new
    else
      @word.save
      redirect_to words_path
    end
  end

  def confirm
    @word = Word.new(word_params)
  end

  private
  def word_params
    params.require(:word).permit(:content)
  end
end
