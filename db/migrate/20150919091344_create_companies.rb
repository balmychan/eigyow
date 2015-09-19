class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies, :comment => '会社' do |t|
      t.string :name, :comment => '会社名'
      t.timestamps null: false
    end
  end
end
