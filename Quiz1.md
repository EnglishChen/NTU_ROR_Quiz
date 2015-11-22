# Quiz 1 of Roby On Rails NO.261 
## Q1. 請說明 Fixnum (整數) 和 Float (浮點數) 之間的差異

-fixnum = 整數 ,言下之意為沒有小數點的數字,可被1整除

整數有兩種分別為：1.Fixnum 2.Bignum 

數字較大的整數 再做運算時 Ruby會自動轉為Bignum


-float = 浮點數, 非整數, 含有小數點 
***
##Q2.今天有兩個字串：
```ruby
str1 = "Hallo Welt!" 
str2 = " NTU Rails 261!"
```
請說明以下兩個印出字串的方式的不同處：

```ruby
-雙引號內的字串加上 #{ } 是可以用來計算的，也就是擁有計算的功能。  
puts "#{str1}#{str2}"
```
```ruby
-沒有引號內的字串，則不會有計算的功能，是直接將結果所表現出來。  
puts str1 + str2
```
***
##Q3.請解釋 array 和 hash 的不同處

-Array = 陣列 (index value)
    像是個籃子一樣,裡面可以放不同資料型態的物件

    可將陣列分為索引和元素, 索引＝位置, 元素＝物件

```ruby
    a=['paper','scissor','stone'] , 
    ```
           可知, a陣列有3個元素,索引為0,1,2 
            因此可得知 
```ruby
     a[0]='paper' , a[1]='scissor', a[2]='stone'
```

-Hash = 陣列 (Key value)

    和Array一樣, 可以放不同資料型態的物件

    但關鍵在於此陣列的功能在於將所要表達之 ''詞和意思'' 互相定義

    因此在做尋找時,可利用關鍵字來找到其詞的位置
***
##Q4.請寫一段 code 從 [1, "a string", 3.14, [1,2,3,4]] 這個陣列找出所有非字串的值

```ruby
    arr.select {|x| x.class != String}
```
***
##Q5.請列出兩種產出亂數的方法

```ruby
        computer_input = rand (1..3)
```

```ruby
          [1,2,3].shuffle!  
          or
          [1,2,3].shuffle!.last
```
***
##Q6.請把 lesson1 程式碼裡的 calculator.rb 裡面的使用者輸入兩個數字的方式改寫成 method，並要有防止使用者亂輸入值的功能

```ruby
    def firstNumber ()
        begin
            puts "Please enter the first Number:"
            num = gets.chomp.to_i
        end while !(num.class == Fixnum)
    end

    def seconfNumber ()
        begin
            puts "Please enter the seconf number:"
            num = gets.chomp.to_i
        end while !(num.class == Fixnum)
    end
```
***
##Q7.以下這段程式碼：
```ruby
((1 > 3)&&(true == true))||(!!!false)
```
會執行出什麼結果？ 請試試不用 irb 算出結果

```ruby
    　((1 > 3) && (true == true)) || (!!! false)
```
(1大於3)且 (true為true) ,判斷結果為 false   
(!!!false) , false為不0值的反值,結果為true   
false || true , false或true, 在可選擇時,只會判斷true    
**因此結果為true**
***
##Q8.請問 binding.pry 是什麼？ 要如何使用它？

加在code的中間, 可在執行code時回傳其結果是否有問題，當成debug的小工具
***
##Q9.下面的一段程式碼，請嘗試用其他方法把 if...else...end 簡化成一行
```ruby
    var = 5

    if var >= 5
      return "var is greater than or equal to 5"
    else
      return "var is less than 5"
    end
```

```ruby
    var = 5

    if var >= 5
      return "var is greater than or equal to 5"
    else
      return "var is less than 5"
    end
```
```ruby
    var >=5 ? "Vvar is greather than or equal to 5 " : " var is less than 5"?
```
```ruby
        case operation  
          when var >= 5 then puts "var is greather than or equal to 5"  
          when var <5 then puts "var is less than 5"  
        end  
```
```ruby
    def (var)  
      if operation >= 5  
        var is greather than or equal to 5  
      else  
        var is less than 5  
      end 
    end 
```