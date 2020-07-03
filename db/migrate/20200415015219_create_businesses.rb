class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.belongs_to :business_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
