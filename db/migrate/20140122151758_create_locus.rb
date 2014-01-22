class CreateLocus < ActiveRecord::Migration
  def change
    create_table :locus do |t|
      t.string :place
      t.string :address
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
