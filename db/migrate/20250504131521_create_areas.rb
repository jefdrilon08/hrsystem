class CreateAreas < ActiveRecord::Migration[8.0]
  def change
    create_table :areas, id: :uuid do |t|
      t.string :name
      t.string :short_name
      t.string :status

      t.timestamps
    end
  end
end
