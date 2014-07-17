class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.string :number
      t.belongs_to :chapter
      t.timestamps
    end
  end
end
