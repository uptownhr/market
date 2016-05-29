Sequel.migration do
  up do
    create_table :sites do
      primary_key :id
      Fixnum :user_id
      Fixnum :app_id
      String :domain, :unique => true
      String :status
      DateTime :created_at
    end
  end

  down do
    drop_table :sites
  end
end
