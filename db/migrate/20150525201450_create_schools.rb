class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :code
      t.references :country, index: true
      t.boolean :is_private

      t.timestamps
    end
  end
end
