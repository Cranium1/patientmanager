class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
    	t.string :name_first
    	t.string :name_last
    	t.boolean :hiv_positive
    	t.boolean :biopsy_pending
    	t.boolean :other_pending
    	t.boolean :cancer
    	t.date :date_seen
    	t.date :date_return

    	t.timestamps null: false
    end
  end
end