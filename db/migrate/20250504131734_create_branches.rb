class CreateBranches < ActiveRecord::Migration[8.0]
  def change
    create_table :branches, id: :uuid do |t|
      t.string :name
      t.string :short_name
      t.string :status
      t.references :cluster, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
