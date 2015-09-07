class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
	    t.datetime "created_at", null: false
	  	t.timestamps null: false
    end
  end

end
