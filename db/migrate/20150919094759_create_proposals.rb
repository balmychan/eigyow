class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals, :comment => '提案書' do |t|
      t.string :upload_file_name, :comment => '提案書ファイル名'
      t.binary :upload_file, :comment => '提案書ファイル'
      t.references :proposal, :comment => '議事録ID'
      t.timestamps null: false
    end
  end
end
