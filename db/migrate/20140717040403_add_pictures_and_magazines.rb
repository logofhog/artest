class AddPicturesAndMagazines < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.references :imageable, polymorphic: true
      t.timestamps
    end
    
    create_table :magazines do |t|
      t.string :name
      t.timestamps
    end
  end
end
