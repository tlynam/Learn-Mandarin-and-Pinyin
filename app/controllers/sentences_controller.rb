class SentencesController < ApplicationController
	def new
		@sentence = Sentence.new
    @phrase_groups = PhraseGroup.all
	end

  def create
    @sentence = Sentence.new phrase_group_params
    phrase_group_ids = params['english'].values.flatten.reject{|v| v == ''}.map(&:to_i)
    phrase_groups = PhraseGroup.where(id: phrase_group_ids)

    if @sentence.save && phrase_groups.update_all(sentence_id: @sentence.id)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    Sentence.find(params[:id]).destroy
    redirect_to root_path
  end

	private

	def sentence_params
		params.require(:sentence).permit(:phrase_groups)
	end

end
