class CreatePatients < ActiveRecord::Migration[7.2]
  def change
    unless table_exists?(:patients)
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
  end
end
