class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string   :username, :limit => 50
      t.string   :password, :limit => 10
      t.string   :firstname, :limit => 80
      t.string   :lastname, :limit => 80
      t.string   :email, :limit => 100
      t.boolean  :activated
      t.string   :photo_file_name
      t.string   :photo_content_type
      t.integer  :photo_file_size
      t.datetime :photo_updated_at

      t.timestamps null: false
    end
  end
end

