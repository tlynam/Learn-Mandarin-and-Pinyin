class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.belongs_to :phrase_group, index:true
      t.string :english, null: false
      t.string :pinyin, null: false
      t.timestamps null: false
    end
  end
end
