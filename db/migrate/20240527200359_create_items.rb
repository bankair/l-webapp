class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items, id: :uuid do |t|
      t.string :name
      t.boolean :active
      t.references :list, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
