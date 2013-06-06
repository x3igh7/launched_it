class SchemaContraints < ActiveRecord::Migration
  def up
    change_column :apps, :name, :string, null: false
    change_column :apps, :description, :string, null: false
    change_column :apps, :code_url, :string, null: false
    change_column :apps, :url, :string, null: false

    change_column :comments, :content, :text, null: false
    change_column :comments, :first_name, :string, null: false
    change_column :comments, :last_name, :string, null: false
    change_column :comments, :email, :string, null: false
  end

  def down
    change_column :apps, :name, :string, null: true
    change_column :apps, :description, :string, null: true
    change_column :apps, :code_url, :string, null: true
    change_column :apps, :url, :string, null: true

    change_column :comments, :content, :text, null: true
    change_column :comments, :first_name, :string, null: true
    change_column :comments, :last_name, :string, null: true
    change_column :comments, :email, :string, null: true
  end
end
