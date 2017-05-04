class AddColumnToInfos < ActiveRecord::Migration[5.0]
  def change
    add_column :infos, :first_name, :string
    add_column :infos, :last_name, :string
    add_column :infos, :email, :string
    add_column :infos, :phone, :string
    add_column :infos, :company_name, :string
    add_column :infos, :description, :text
  end
end
