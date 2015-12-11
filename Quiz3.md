# Quiz 3 of Ruby On Rails NO.261 
## Q1.請解釋 database.yml, routes.rb, 和 Gemifle 分別是什麼？ 他們分別在一個 Rails 專案裡的什麼位置？ 他們為什麼對一個 Rails 專案如此重要？
---
  - database.yml:這個rails專案的database的設定均在此。
  - routes.rb:一個設定此rails app URL的設定檔。   
			  可以看此app的功能。   
			  路由的定義也在此。   
  - Gemfile:放在這個專案的根目錄底下。
  			把目前rails專案所會用到的gem和版本都會記錄下來。
  			可將使用的外來libeary放入。

***

## Q2.MVC 架構裡的 M, V, 和 C 分別代表什麼？
---
  - M:Model; 處理商業邏輯or資料的地方，可以代表這個APP和database的資料表對應。
  - V:View; 將後端的資料結果顯示於使用者介面上 
  - C:Controller; 處理外界進入的http請求,並和Model作互動後，取得資料後輸出於使用者介面上。(主要為針對請求去做執行處理)
***

## Q3.請解釋 CRUD 是哪四個字的縮寫？
---
  - C:Create,新增;
  - R:Read,讀取;
  - U:Update,更新;
  - D:Destroy,刪除;

***

## Q4.請問在 routes.rb 裡面加入以下程式碼會產生出哪一些 url？ (提示：在 browser 輸入http://localhost:3000/rails/info/routes)
```ruby
  resources :users
```
---
將內部的CRUD所產出
***

## Q5.請解釋 model 檔案和 migration 檔案的差別
---
	- model:檔案對應到資料庫裡的某個資料表 ( 繼承 ActiveRecord::Base )
			是model中的m，負責新增與操作需要持久存在資料庫裡的資料，是物件關係映射(Object Relational Mapping,ORM)的描述。
			(補充: ORM為將應用程式中複雜的物件，對應到關聯式資料庫管理系統中的資料表，可以輕鬆儲存物件，不需SQL的語法) 
	- migration:記錄資料庫內藍圖的改變(可想像成資料庫欄位的Git) ( 繼承 ActiveRecord::Migration )
***

## Q6.若今天發現一個 migration 檔寫錯，請問我應該用什麼指令回復到上一個版本的 migration?
---
```ruby
	rake db:rollback
```
***

## Q7.假設今天
  - 我要在資料庫裡產出一個叫 group 的資料表
  - 裡面包括的欄位名稱和相對應的資料型別是： name (string), description (text), members (integer)
  - 請寫出一個能產生出以上需求的 migration 檔
---
```ruby
  class CreateQuiz3s < ActiveRecord::Migration
  	def change
  	  create_table :quiz3s do |t|
  	   t.string :name
  	   t.text :description
  	   t.integer :member

  	   t.timestamps     #會增加兩個欄位(Created_at & Updated_at)
  	  end
  	end
  end
```
	接下來...
```ruby
  rake db:migrate    # 執行它，才可讓此App執行 (也可以一次產生多筆的migration，再執行它，會對migration依時間順序作讀取)
```
***

## Q8.請解釋什麼是 ActiveRecord?
---
  Rails的核心之一，為了保護開發者不用再受SQL語言的限制，可以用Ruby語法來對資料庫做操作。
  (ActiveRecord會將Ruby語法翻譯成SQL語言，來讓開發者可以對資料庫操作。)