class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :author
      t.date :published_at
      t.string :isbn_number
      t.decimal :category

      t.timestamps
    end
  end
end
