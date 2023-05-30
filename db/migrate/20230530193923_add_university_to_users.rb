class AddUniversityToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :university, foreign_key: true
  end
end
