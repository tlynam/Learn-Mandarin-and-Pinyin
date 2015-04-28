class PhraseGroup < ActiveRecord::Base
  has_many :phrases
	has_and_belongs_to_many :sentence


end
