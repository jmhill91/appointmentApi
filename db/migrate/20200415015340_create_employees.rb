class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.integer :phone
      t.belongs_to :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
