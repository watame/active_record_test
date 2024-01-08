class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name, comment: '名'
      t.string :last_name, comment: '姓'

      t.timestamps
    end
  end
end
