class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :email
      t.string :title
      t.boolean :available
      t.string :timestamp

      t.timestamps
    end
  end
end
