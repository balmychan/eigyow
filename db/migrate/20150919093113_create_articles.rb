class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles, :comment => '議事録' do |t|
      t.text :note, :comment => '議事録内容'
      t.string :type, :comment => '種類'
      t.references :user, :comment => 'ユーザー'
      t.references :company, :comment => '会社'
      t.timestamps null: false
    end
  end
end
