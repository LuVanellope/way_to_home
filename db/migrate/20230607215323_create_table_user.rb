class CreateTableUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true, name: 'unique_emails' }
      t.boolean :is_admin, null: false, default: false
      t.boolean :is_activist, null: false, default: false

      t.timestamps
    end
  end
end
