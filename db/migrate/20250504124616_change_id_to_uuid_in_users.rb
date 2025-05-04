class ChangeIdToUuidInUsers < ActiveRecord::Migration[8.0]
  def change
    enable_extension 'pgcrypto'  # Enable the pgcrypto extension for UUID generation
    # Add a new column for the UUID
        add_column :users, :new_id, :uuid, default: 'gen_random_uuid()', null: false

            # Copy data from the old id to the new_id column
                execute "UPDATE users SET new_id = gen_random_uuid()"

                    # Remove the old primary key
                        execute "ALTER TABLE users DROP CONSTRAINT users_pkey"

                            # Set new_id as primary key
                                execute "ALTER TABLE users ADD PRIMARY KEY (new_id)"

                                    # Drop the old id column
                                        remove_column :users, :id

                                            # Rename new_id to id
                                                rename_column :users, :new_id, :id

  end
end
