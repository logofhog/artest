class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.belongs_to :book
      t.timestamps
    end
  end
end
