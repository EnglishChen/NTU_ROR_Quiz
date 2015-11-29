# Quiz 2 of Ruby On Rails NO.261 
## Q1.請用簡單的方式敘述以下每一行程式碼：
```ruby
a = 1 
@a = 2
@@a = 5
user = User.new
user.name
user.name = "Joe"
```
```ruby
a = 1              # 將1宣告在a這個變數中
@a = 2             # 將物件變數2 儲存於實例變數a當中
@@a = 5            # 將5宣告在a這個class_variable內
user = User.new    # 創造一個新的物件user,將User這個class的內容儲存在內
user.name          # output出user這個class在name這個instance_method的結果 = get_method
user.name = "Joe"  # 把user.name用一個字串設定在內 = set_method
```

***
## Q2.什麼是 module? 請寫一段程式碼說明一個 class 要如何使用一個 module 裡面的 method?

  就像是一種工具箱，本身不是class，但定義方法確和class相似，且不可以放到class裡面，要放在外面。
```ruby
  module Business
    def rate
      puts "Accountant"
    end
  end

  class Person
    attr_accessor :name, :department

	include Business                # 直接使用Business的module於Person內
    def initialize(name,department)
      @name = name
      @department = department
    end

    def greet
      puts "hello, my name is #{self,name}"
    end
  end

  english = Person.new("English",management)
  english.rate
```
***
## Q3.請說明 class 和 instance variable 之間的差別
  - class: 為物件導向的一個模板，主要是將類別模組化後，再將內容重新設計，以利其他程式或專案可重複使用此類別的方法或內容物。(被模版本身所綁定)
  - instance variable: 將物件變數宣告為實例變數，使資料綁定在物件上，物件沒被銷毀，資料也會完好無恙。並規定此變數只會再這個class內出現，且在物件產生時須自動出現。

***
## Q4.如果今天我為一個叫 User 的 class 產生一個新物件的方式如下，請寫出 User class 的 initialize method
```ruby
User.new("Bob", "male", "Engineer")
```

```ruby
	class User
	    def initialize(name, gender,job)
	      @name = name
	      @gender = gender
	      @job = job
	    end
	end

	User.new("Bob","male","Engineer")
```

***
## Q5.self 在： a. class 裡，method 外面 b. class 裡，instance method 裡 分別是指向什麼?

  - a. 指的是class(模板)本身，非單一物件本身。
  - b. 指的是在instance(藍圖)中，某個被創造出來的物件，而去對他做改變。
***
## Q6.attr_accessor 的功能是什麼
    一種多合為一的概念，可將"初始的設定"和"想做變更得資訊"寫在一起。
    一開始在class內先做初始設定的宣告，一旦被宣告出來後就不可在做改變
```ruby
  class Person
	attr_accessor :name, :department    #可以省掉get_method和set_method的麻煩
	...
	...
  end
```
	再來就可以藉此對初始物件作設定和印出
```ruby
	english = Person.new("english","accountant")  #initial setting
    
    puts english.name      #initial output
    puts english.department
```
	最後若要更改資訊 可以不必重新宣告initial method ，可以直接做變更
```ruby
	english.name = "English"           # modified the object
	english.department = "Accountant"

	puts english.name                  # output the newest information
	puts english.department
```
***
## Q7.請說明 public 和 private method 之間的不同

  - public method : 
  - private method : 只希望在這個class內被用到，不可以直接call它，必須要有3道程序
```ruby
	def identify                       # step 3 call the secret method
	  puts "secret, #{secret_method}" 

	private                            # step 1 write the "private"

	def secret_method                  # step 2 set the sercet method under the "private"
	  "This is private method"
	end
```
***
## Q8.Ruby 是如何確保一個 module 的 method 會被 include 它的 class 使用到？ (提示：method lookup)
	用 
```ruby  
	puts Object.ancestors 
```
	就可以呼叫出更改過的method的祖先，
	順序會是從  最新的-->所使用的module-->繼承的parent_method-->Object-->Kernal-->BasicObject