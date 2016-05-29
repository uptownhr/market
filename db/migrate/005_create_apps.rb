Sequel.migration do
  up do
    create_table :apps do
      primary_key :id
      String :name
      String :git_repo, :unique => true
      DateTime :created_at
    end
  end

  down do
    drop_table :apps
  end
end
