class Sentence < ActiveRecord::Base
	has_and_belongs_to_many :phrase_groups

end
