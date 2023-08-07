class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title #追加
      t.string :body #追加
      t.timestamps
    end
  end
end
