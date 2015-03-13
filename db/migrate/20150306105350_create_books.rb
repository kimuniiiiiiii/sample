class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :number
      t.boolean :lendable

      t.timestamps
    end
  end
end
