class AddDefaultsToPatients < ActiveRecord::Migration
  def change
  	change_column :patients, :hiv_positive, :boolean, :default => false
  	change_column :patients, :biopsy_pending, :boolean, :default => false
  	change_column :patients, :other_pending, :boolean, :default => false
  	change_column :patients, :cancer, :boolean, :default => false
  end
end
