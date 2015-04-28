class CreatePhraseGroupsSentences < ActiveRecord::Migration
  def change
    create_table :phrase_groups_sentences do |t|
      t.belongs_to :phrase_group, index: true
      t.belongs_to :sentence, index: true
    end
  end
end
