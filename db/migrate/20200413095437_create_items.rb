class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :image, null: false
      t.text :rule, null: false
      t.string :people, null: false
      t.string :time, null: false
      t.string :age, null: false
      t.timestamps
    end
  end
end
