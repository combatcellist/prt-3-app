class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string       :name,          null: false
      t.integer      :price,         null: false
      t.text         :content,       bull: false
      t.timestamps
    end
  end
end
