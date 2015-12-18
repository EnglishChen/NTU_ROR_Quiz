# Quiz 4 of Ruby On Rails NO.261 
## Q1.請說明 rails g scaffold xxx 功能的壞處為何？
---
   會產生過多的不需要檔案和資料夾，雖然很方便，但內部小細節依舊要自行做調整，若檔案內容較多則不易改動 。
***
## Q2.若今天需要為 Project 和 Issue 這兩個 Model 建立一對多的關係，請寫出實作上所需要的 migratiion 和 model 檔案
---
```ruby
	class AddProjectAndIssueTables < ActiveRecord::Migration
	  def change
	      create_table :projects do |t|
	        t.string :project_name
	      end

	      create_table :issues do |t|
	        t.string :issue_name
	        t.integer :project_id
	      end
	  end
	end


	class Project < ActiveRecord::Base
	  has_many :issues
	end

	class Issue < ActiveRecord::Base
	  belongs_to :project
	end
```
***
## Q3.若今天我有以下 model 檔：請寫出和這個 model 檔相關連的 model 檔，以及這些 model 檔所需要的資料庫欄位
```ruby
class User < ActiveRecord::Base
  has_many :groups_users
  has_many :groups, through: :groups_users 
end
```
---
```ruby
	class Group < ActiveRecord::Base
	  has_many :groups_users
	  has_many :users, through: :groups_users
	end

	class GroupsUser < ActiveRecord::Base
	  belongs_to :group
	  belongs_to :user
	end
```
***
## Q4.延續第3題，如果需要讓一個叫 "Bob" 的使用者產生一個名字叫做 "Rails is Fun" 的社團，應該如何在 rails console 裡實作出來？
---
```ruby
	bob = User.create(name: "Bob")
	group = Group.create(title: "Rails is Fun")
	bob.groups << group 
```

***
## Q5.延續第4題，請寫一段程式碼確保使用者在建立新社團時社團名字不可以是空白，而且不能超過50個字
---
```ruby
	class Group < ActiveRecord::Base
	    has_many :groups
	    has_many :users, through: :groups_users

	    validate :title, presence: true, length: {maximum :50}
	end
```
***
## Q6.請列出兩種方法檢查在 routes.rb 裡面設定的路由
---
  - rails routes
  - 利用browse，進入 info/routes
***
## Q7.請列出在一個 rails 專案裡使用 bootstrap 套件的步驟
---
```ruby
	1.在 Gemfile 內插入 
	gem 'bootstrap'
```
```ruby
	2.執行
	bumdle install
```
```ruby
	3.先查看路徑是否正確(有兩種方法)

	bundle show bootstrap
	bundle show pry
```
```ruby
	4.進入 app/views/layouts/application.html.erb
```
```ruby
	5.在 assets/javascripts/application.js 內的第15行左右 加入
	//= require bootstrap
```
```ruby
	6.進入assets/stylesheets/application.css 
	   並更改其儲存格是為scss
	   再至17行加入
	@ import "bootstrap";
```
```ruby
	7.即可在 layouts/application.html.erb 內編輯網頁
```
***
## Q8.請說明在 .erb 檔案裡 <%= %> 與 <% %> 這兩種 tag 的差別
---
  - <%= %>: 等號後方的運算結果or字元，會被顯示出來
  - <% %>:  只會做運算，不會顯示結果出來
***
