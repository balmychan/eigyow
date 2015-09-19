class CreateArticleKeywords < ActiveRecord::Migration
  def change
    create_table :article_keywords, :comment => '議事録キーワード' do |t|
      t.string :keyword, :comment => 'キーワード'
      t.references :article, :comment => '議事録ID'
      t.timestamps null: false
    end
  end
end
