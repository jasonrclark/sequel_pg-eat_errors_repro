Sequel.migration do
  up do
    create_table :users do
      String :email, null: false

      index :email, unique: true
    end
  end
end
