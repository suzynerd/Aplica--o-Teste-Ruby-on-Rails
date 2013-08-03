class CreateSistemas < ActiveRecord::Migration
  def change
    create_table :sistemas do |t|
      t.string :name
      t.string :seat_id_seq
      t.text :address
      t.decimal :prrice_paid
      t.string :email_address

      t.timestamps
    end
  end
end
