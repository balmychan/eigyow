class CreateArticleTodos < ActiveRecord::Migration
  def change
    create_table :article_todos, :comment => '議事録ToDo' do |t|
      t.string :todo, :comment => 'ToDo'
      t.references :article, :comment => '議事録ID'
      t.timestamps null: false
    end
  end
end
