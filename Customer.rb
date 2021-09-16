#!usr/bin/ruby -w

$temp = 0
$hash_ = {"Salt"=>40, "Pepper"=>55, "Taco"=>120, "Honey"=>70, "Jelly"=>87, "Ketchup"=>80, "Butter"=>140, 
          "Pickles"=>125, "Sugar"=>45, "Soap"=>30, "Cleaner"=>98, "HandWash"=>130 }
  $hash_.each do |k, v|
      print k,"\t\t"
      print v,"\n"
  end    

module Customer
    def cust
        puts "Enter name of items : "
        $hash_.each do |x,y|  
        input = gets.chomp
            if input == x
            print y
            $temp = $temp + y
            end 
        end    
        puts "Total is : #{$temp}"
    end    

    def bill
        puts "It's bill ......"
    end   
end

class Buy
     include Customer
end

obj = Buy.new
obj.cust
obj.bill