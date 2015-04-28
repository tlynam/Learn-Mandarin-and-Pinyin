class PagesController < ApplicationController

	def home
		if current_user
			@user = User.find current_user.id
			@phrases = Phrase.all
			@phrase_groups = PhraseGroup.all
			@sentences = Sentence.all
		end
	end

end
