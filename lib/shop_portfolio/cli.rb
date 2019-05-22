require 'pry'
class ShopPortfolio::CLI
    def call 
      list_portfolio
      menu
      goodbye
    end

    def list_portfolio
        puts "Today's Portfolio List:"
        @shop_items = ShopPortfolio::Shop_item.today
        @shop_items.each.with_index(1) do |shop_item, i|
      puts "#{i}. #{shop_item.name} - #{shop_item.price} - #{shop_item.availability}"
        end 
    end

    def menu
        puts "Enter the number of the list you'd like more info on or type exit or enter:"
        input = nil
        while input != "exit"
        input = gets.strip.downcase


        if input.to_i > 0
            the_shop_item =  @shop_items[input.to_i-1]
            puts "#{the_shop_item.name} - #{the_shop_item.price} - #{the_shop_item.availability}"
        elsif input == "list"
            list_portfolio
        else
            puts "Not sure what you want, type exit"
        end
    end
end

def goodbye
    puts "see you tomorrow for more list!!!"
end
    #  binding.pry
end