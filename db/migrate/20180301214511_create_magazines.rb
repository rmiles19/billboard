class CreateMagazines < ActiveRecord::Migration[5.1]
  def change
    create_table :magazines do |t|
      t.string :list_name

      t.timestamps
    end
  end
end
