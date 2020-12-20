class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.integer :user_id
      t.string :name
      t.string :state
      t.string :description

      t.timestamps
    end
  end
end
