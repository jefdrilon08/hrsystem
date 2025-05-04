class CreateJobCommittees < ActiveRecord::Migration[8.0]
  def change
    create_table :job_committees, id: :uuid do |t|
      t.string :name
      t.string :short_name
      t.string :status

      t.timestamps
    end
  end
end
