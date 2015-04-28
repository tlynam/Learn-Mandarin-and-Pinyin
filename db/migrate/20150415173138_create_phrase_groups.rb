class CreatePhraseGroups < ActiveRecord::Migration
  def change
    create_table :phrase_groups do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
