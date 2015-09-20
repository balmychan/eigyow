# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 議事録
Article.create(:note => "議事録内容のテスト1\n\n●Telです。", :type => 'TelArticle', :user_id => 1, :company_id => 1)
Article.create(:note => "議事録内容のテスト2\n\n●Emailです。", :type => 'EmailArticle', :user_id => 1, :company_id => 2)
Article.create(:note => "議事録内容のテスト3\n\n●Telです。", :type => 'TelArticle', :user_id => 1, :company_id => 1)
Article.create(:note => "議事録内容のテスト4\n\n●Emailです。", :type => 'EmailArticle', :user_id => 1, :company_id => 2)
Article.create(:note => "議事録内容のテスト5\n\n●Telです。", :type => 'TelArticle', :user_id => 1, :company_id => 1)
Article.create(:note => "議事録内容のテスト6\n\n●Emailです。", :type => 'EmailArticle', :user_id => 1, :company_id => 2)
Article.create(:note => "議事録内容のテスト7\n\n●Telです。", :type => 'TelArticle', :user_id => 1, :company_id => 1)
Article.create(:note => "議事録内容のテスト8\n\n●Emailです。", :type => 'EmailArticle', :user_id => 1, :company_id => 2)
Article.create(:note => "議事録内容のテスト9\n\n●Directです。", :type => 'DirectArticle', :user_id => 2, :company_id => 3)

# 会社名
Company.create(:name => "株式会社A社")
Company.create(:name => "株式会社B社")
Company.create(:name => "株式会社C社")
Company.create(:name => "株式会社D社")
Company.create(:name => "株式会社E社")

# 会社担当者
CompanyPerson.create(:name => "田中太郎", :email => "tanaka@t.com", :company_id => 1)
CompanyPerson.create(:name => "山田二郎", :email => "yamada@t.com", :company_id => 2)
CompanyPerson.create(:name => "岡本三郎", :email => "okamoto@t.com", :company_id => 3)
CompanyPerson.create(:name => "田村四郎", :email => "tamura@t.com")

# 議事録の会社担当者
PersonInCharge.create(:article_id => 1, :company_person_id => 1)
PersonInCharge.create(:article_id => 2, :company_person_id => 2)
PersonInCharge.create(:article_id => 3, :company_person_id => 3)

# ToDo
ArticleTodo.create(:todo => "明日電話をかける", :article_id => 1)
ArticleTodo.create(:todo => "メールをおくる", :article_id => 2)
ArticleTodo.create(:todo => "相談する", :article_id => 3)

# キーワード
ArticleKeyword.create(:keyword => "大事なこと１", :article_id => 1)
ArticleKeyword.create(:keyword => "大事なこと２", :article_id => 2)
ArticleKeyword.create(:keyword => "大事なこと３", :article_id => 3)
