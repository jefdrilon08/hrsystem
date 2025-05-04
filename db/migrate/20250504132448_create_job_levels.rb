class CreateJobLevels < ActiveRecord::Migration[8.0]
  def change
    create_table :job_levels, id: :uuid do |t|
      t.string :name
      t.string :short_name
      t.string :status
      t.references :job_rank, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
