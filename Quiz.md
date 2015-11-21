# Quiz 1 of Roby On Rails NO.261 
## Q1. 

    - fixnum = 整數 ,言下之意為沒有小數點的數字

    整數有兩種分別為：1.Fixnum 2.Bignum 

    數字較大的整數 再做運算時 Ruby會自動轉為Bignum

    - float = 浮點數, 非整數, 可含有小數點 


##Q2.
    雙引號內的字串加上 #{} 是可以用來計算的，也就是擁有計算的功能。  

    沒有引號內的字串，則不會有計算的功能，是直接將結果所表現出來。  

##Q3.

    -Array = 陣列 (index value)

    像是個籃子一樣,裡面可以放不同資料型態的物件

    可將陣列分為索引和元素, 索引＝位置, 元素＝物件


    ex: a=['paper','scissor','stone'] , 
           可知, a陣列有3個元素,索引為0,1,2 

            因此可得知 
           a[0]='paper' , a[1]='scissor', a[2]='stone'

    -Hash = 陣列 (Key value)

    和Array一樣, 可以放不同資料型態的物件

    但關鍵在於此陣列的功能在於將所要表達之 ''詞和意思'' 互相定義

    因此在做尋找時,可利用關鍵字來找到其詞的位置

##Q4.

##Q5.
　̀'
        computer_input = rand (1..3)
　̀'　
    
　̀'
         num=[1,2,3,4,5]  

         num.sort_by  {rand}  
　̀'

##Q6.
　̀'
puts "please enter the first number:"

num1 = gets.chomp.to_i

puts "please enter the second number:"

num2 = gets.chomp.to_i
　̀'

改成method 並有效防止只用者亂輸入值

##Q7.

    　̀'((1 > 3) && (true == true)) || (!!! false)　̀'
    - (1大於3)且 (true為true) ,判斷結果為 false
     (!!!false) , false為不0值的反值,結果為true
     false || true , false或true, 在可選擇時,只會判斷true 
     **因此結果為true**

##Q8.

    加在code的中間, 可在執行code時回傳其結果是否有問題，當成debug的小工具

##Q9.

　̀'
        case operation  
          when var >= 5 then puts "var is greather than or equal to 5"  
          when var <5 then puts "var is less than 5"  
        end  
　̀'

　̀'
    def (var)  
      if operation >= 5  
        var is greather than or equal to 5  
      else  
        var is less than 5  
      end 
    end 
　̀'