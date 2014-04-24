class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name_of_book
      t.string :author_of_book
      t.integer :year_book_was_published
    end
  end
end