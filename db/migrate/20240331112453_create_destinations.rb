class CreateDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :image
      t.string :description
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
