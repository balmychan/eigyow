class CreateCompanyPeople < ActiveRecord::Migration
  def change
    create_table :company_people, :comment => '相手先会社の担当者' do |t|
      t.string :name, :comment => '名前'
      t.string :email, :comment => 'emailアドレス'
      t.references :company, :comment => '会社ID'
      t.timestamps null: false
    end
  end
end
