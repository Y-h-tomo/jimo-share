# frozen_string_literal: true

class AddColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :content, :string
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
