# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 議事録
Article.create(:note => "議事録内容のテスト\n\n●Telです。", :type => 'TelArticle')
Article.create(:note => "議事録内容のテスト\n\n●Emailです。", :type => 'EmailArticle')
Article.create(:note => "議事録内容のテスト\n\n●Directです。", :type => 'DirectArticle')

# 会社名
Company.create(:name => "株式会社A社")
Company.create(:name => "株式会社B社")
Company.create(:name => "株式会社C社")
Company.create(:name => "株式会社D社")
Company.create(:name => "株式会社E社")

# 会社担当者
CompanyPerson.create(:name => "田中太郎", :email => "tanaka@t.com")
CompanyPerson.create(:name => "山田二郎", :email => "yamada@t.com")
CompanyPerson.create(:name => "岡本三郎", :email => "okamoto@t.com")
CompanyPerson.create(:name => "田村四郎", :email => "tamura@t.com")
