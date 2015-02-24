class CreateCcsfRails < ActiveRecord::Migration
  def change
    create_table :ccsf_rails do |t|
      t.string :index
      t.string :links
      t.string :about

      t.timestamps
    end
  end
end
