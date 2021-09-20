#!usr/bin/ruby -w

module List 
    $temp = Array.new()
    $price = Array.new()
    $num = Array.new()
    $sum = Array.new()
    $i = $j = $k = $l = $total = $s = 0
    $hash = {"salt"=>40, "pepper"=>55, "taco"=>120, "honey"=>70, "jelly"=>87, "ketchup"=>80, 
             "butter"=>140, "pickles"=>125, "sugar"=>45, "soap"=>30, "cleaner"=>98, "tea"=>90 }   
    def list()
        $hash.each do |k, v| 
        print k,"\t\t"
        print v,"\n"
        end
    end  
end

module Customer 
    def cust
        puts "Enter name and quantity of items : "
        $hash.each do |x,y|  
        input = gets.chomp
        n = gets.chomp.to_i
         
            if input.empty? == false || n != 0  
                $temp[$i] = "#{input}"
                $i = $i + 1
                $num[$j] = n
                $j = $j + 1
            end
            if input.empty?
                break
            else     
                y = $hash[input] 
                puts y  
                $s = y * n
                $sum[$l] = $s
                $l = $l + 1
                $total = $total + $s
                $price[$k] = y 
                $k = $k + 1
            end  
         
        end
    
        puts " Item \t No. \t Price \t Total "
        enum = $temp.each
        enum1 = $num.each
        enum2 = $price.each
        enum3 = $sum.each
        loop do
        a1,a2,a3,a4 = enum.next,enum1.next,enum2.next,enum3.next
            puts " #{a1} \t #{a2} \t #{a3} \t #{a4} "
        end    

        puts "\nTotal is  : #{$total}"
        puts "\t\t\t PAY  "
    end   
end

class Buy
    include List
    include Customer
end

obj = Buy.new
obj.list
obj.cust