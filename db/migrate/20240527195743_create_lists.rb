class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
