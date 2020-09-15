class Players < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.boolean :one_handed_backhand
      t.integer :racquetbrand_id

      t.timestamps
    end
  end
end
