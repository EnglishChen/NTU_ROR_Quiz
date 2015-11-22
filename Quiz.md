# Quiz 1 of Roby On Rails NO.261 
## Q1. 

fixnum = 整數 ,言下之意為沒有小數點的數字

整數有兩種分別為：1.Fixnum 2.Bignum 

數字較大的整數 再做運算時 Ruby會自動轉為Bignum

***
float = 浮點數, 非整數, 可含有小數點 


##Q2.
雙引號內的字串加上 #{ } 是可以用來計算的，也就是擁有計算的功能。  

沒有引號內的字串，則不會有計算的功能，是直接將結果所表現出來。  

##Q3.

Array = 陣列 (index value)
像是個籃子一樣,裡面可以放不同資料型態的物件

可將陣列分為索引和元素, 索引＝位置, 元素＝物件


    ex: a=['paper','scissor','stone'] , 
           可知, a陣列有3個元素,索引為0,1,2 

            因此可得知 
           a[0]='paper' , a[1]='scissor', a[2]='stone'
***
Hash = 陣列 (Key value)

    和Array一樣, 可以放不同資料型態的物件

    但關鍵在於此陣列的功能在於將所要表達之 ''詞和意思'' 互相定義

    因此在做尋找時,可利用關鍵字來找到其詞的位置

##Q4.

##Q5.
```ruby
        computer_input = rand (1..3)
```

```ruby
          [1,2,3].shuffle!  
          or
          [1,2,3].shuffle!.last
```

##Q6.



##Q7.
```ruby
    　((1 > 3) && (true == true)) || (!!! false)
```
(1大於3)且 (true為true) ,判斷結果為 false
(!!!false) , false為不0值的反值,結果為true
false || true , false或true, 在可選擇時,只會判斷true 
**因此結果為true**

##Q8.

加在code的中間, 可在執行code時回傳其結果是否有問題，當成debug的小工具

##Q9.
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