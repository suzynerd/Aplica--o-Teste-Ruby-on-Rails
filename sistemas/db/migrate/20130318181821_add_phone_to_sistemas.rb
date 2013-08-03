class AddPhoneToSistemas < ActiveRecord::Migration
  def change
    add_column :sistemas, :phone, :string
  end
end
