class CreateDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :destinations do |t|

      t.timestamps
    end
  end
end
