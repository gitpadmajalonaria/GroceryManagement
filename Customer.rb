#!usr/bin/ruby -w

module Customer
    def cust
        puts "Name of items you want :"
        name = gets.chomp
        while name.empty?
            puts $hash_.key?(name)
        #$temp = + "#{hash.name}"
         puts "#{$hash_[name]}"
        end
     #   puts $hash_.key?(name)
      #  #$temp = + "#{hash.name}"
      #   puts "#{$hash_[name]}"
    end    
end

class Buy
    include Customer
    load 'Common.rb'
    include Common 
end

obj = Buy.new
$hash_ = obj.items
$hash_.each do |k, v|
    print k,"\t\t"
    print v,"\n"
end    
obj.cust