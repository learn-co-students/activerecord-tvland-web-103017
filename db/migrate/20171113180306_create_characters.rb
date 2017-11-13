class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :show_id
      t.string :name
    end
  end
end
