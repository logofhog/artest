class CreateAuthorsAndBooks < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.timestamps
    end

    create_table :books do |t|
      t.string :title
      t.timestamps
    end

    create_table :authors_books do |t|
      t.belongs_to :authors
      t.belongs_to :book
    end
  end
end
