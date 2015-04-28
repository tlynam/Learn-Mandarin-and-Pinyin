class PhrasesController < ApplicationController
	def new
		@phrase = Phrase.new
	end

  def create
    @phrase = Phrase.new phrase_params

    if @phrase.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    Phrase.find(params[:id]).destroy
    redirect_to root_path
  end

	private

	def phrase_params
		params.require(:phrase).permit(:english, :pinyin)
	end

end
