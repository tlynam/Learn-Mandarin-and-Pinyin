class Phrase < ActiveRecord::Base
	belongs_to :phrase_group
	validates_presence_of :english, :pinyin

	def phrase_name
		self.english
	end
end
