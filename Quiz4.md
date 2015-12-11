# Quiz 3 of Ruby On Rails NO.261 
## Q1.請說明 rails g scaffold xxx 功能的壞處為何？
---

***
## Q2.若今天需要為 Project 和 Issue 這兩個 Model 建立一對多的關係，請寫出實作上所需要的 migratiion 和 model 檔案
---

***
## Q3.若今天我有以下 model 檔：請寫出和這個 model 檔相關連的 model 檔，以及這些 model 檔所需要的資料庫欄位
```ruby
class User < ActiveRecord::Base
  has_many :groups_users
  has_many :groups, through: :groups_users 
end
```
---

***
## Q4.延續第3題，如果需要讓一個叫 "Bob" 的使用者產生一個名字叫做 "Rails is Fun" 的社團，應該如何在 rails console 裡實作出來？
---

***
## Q5.延續第4題，請寫一段程式碼確保使用者在建立新社團時社團名字不可以是空白，而且不能超過50個字
---

***
## Q6.請列出兩種方法檢查在 routes.rb 裡面設定的路由
---
	- rails routes
	- 利用browser，進入 info
***
## Q7.請列出在一個 rails 專案裡使用 bootstrap 套件的步驟
---
	1.在 Gemfile 內插入 
```ruby
	gem 'bootstrap'
```
	2.執行
```ruby
	bumdle install
```
	3.先查看路徑是否正確(有兩種方法)
```ruby
	bundle show bootstrap
	bundle show pry
```
	4.進入 app/views/layouts/application.html.erb
	5.在 assets/javascripts/application.js 內的第15行左右 加入
```ruby
	//= require bootstrap
```
	6.進入assets/stylesheets/application.css 
	   並更改其儲存格是為scss
	   再至17行加入
```ruby
	@ import "bootstrap";
```
	7.即可在 ;ayouts/application.html.erb 內編輯網頁
***
## Q8.請說明在 .erb 檔案裡 <%= %> 與 <% %> 這兩種 tag 的差別
---
	- <%= %>: 
	- <% %>:
***
