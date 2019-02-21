class CreateAlpacas < ActiveRecord::Migration[5.2]
  def change
    create_table :alpacas do |t|
      t.string :name
      t.boolean :sheared, default: false
      t.integer :sweaters_made, default: 0

      t.timestamps
    end
  end
end
