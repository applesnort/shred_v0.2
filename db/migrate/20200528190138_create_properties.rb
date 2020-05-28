class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :mls_url
      t.decimal :list_price
      t.datetime :date_listed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
