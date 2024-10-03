# class CreatePatients < ActiveRecord::Migration[7.2]
#   def change
#     create_table :patients do |t|
#       t.string :name
#       t.integer :age

#       t.timestamps
#     end
#   end
# end
class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    unless table_exists?(:patients)
      create_table :patients do |t|
        t.string :name
      t.integer :age

      t.timestamps
      end
    end
  end
end

