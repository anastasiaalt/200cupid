require_relative "../config"

class CreateUsers < ActiveRecord::Migration
  def up
    puts "apply this thing"
    create_table :users do |t|
      t.string(:password_digest)
      t.string(:name)
      t.integer(:age)
      t.string(:location)
      t.string(:avatar_img_url)
    end
  end

  def down
    puts "undo"
    drop_table :users
  end
end

CreateUsers.migrate(ARGV[0])