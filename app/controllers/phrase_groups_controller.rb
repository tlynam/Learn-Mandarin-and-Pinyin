class PhraseGroupsController < ApplicationController
	def new
		@phrase_group = PhraseGroup.new
    @phrases = Phrase.all
	end

  def create
    @phrase_group = PhraseGroup.new phrase_group_params
    phrase_ids = params['name'].values.flatten.reject{|v| v == ''}.map(&:to_i)
    phrases = Phrase.where(id: phrase_ids)

    if @phrase_group.save && phrases.update_all(phrase_group_id: @phrase_group.id)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    PhraseGroup.find(params[:id]).destroy
    redirect_to root_path
  end

	private

	def phrase_group_params
		params.require(:phrase_group).permit(:name, :phrases)
	end

end
