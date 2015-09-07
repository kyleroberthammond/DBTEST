class AddCompanyColumns < ActiveRecord::Migration
  def change
  	    add_column :companies, :company_name, :string
        add_column :companies, :address, :string
  end
end
