#!usr/bin/ruby -w

module Customer
    def cust
        puts "It's Customer"
    end
end

class Buy
    include Customer
end

obj = Buy.new
obj.cust