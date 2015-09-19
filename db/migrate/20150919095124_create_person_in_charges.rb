class CreatePersonInCharges < ActiveRecord::Migration
  def change
    create_table :person_in_charges, :comment => '議事録と結びつく担当者' do |t|
      t.references :article, :comment => '議事録ID'
      t.references :company_person, :comment => '担当者ID'
      t.timestamps null: false
    end
  end
end
