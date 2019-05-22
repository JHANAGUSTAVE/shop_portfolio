require 'pry'
class ShopPortfolio::Shop_item
attr_accessor :name, :price, :availability, :url
    def self.today
        self.scrape_shop_items
    end

    def self.scrape_shop_items
        shop_items = []

        shop_items << self.scrape_wix


        shop_items
    end


    def self.scrape_wix
        doc = Nokogiri::HTML(open("https://www.made-in-china.com/cs/hot-china-products/Shoes.html?gclid=CjwKCAjw5pPnBRBJEiwAULZKvu3WCf0wQpd3E42YsIA77GJsPvBmH-Ms9ATp4w2gXNcSMqr7SGJ7QxoCfTQQAvD_BwE"))
       
        shop_item = self.new
        shop_item.name = doc.search("a.adSrcClass").css("span").first.text.strip
        shop_item.price = doc.search(".proProperty").css("span").first.text.strip
        shop_item.availability = true
        

        shop_item
        # binding.pry
    end


    def self.scrape_wix
        doc = Nokogiri::HTML(open("https://www.made-in-china.com/cs/hot-china-products/Shoes.html?gclid=CjwKCAjw5pPnBRBJEiwAULZKvu3WCf0wQpd3E42YsIA77GJsPvBmH-Ms9ATp4w2gXNcSMqr7SGJ7QxoCfTQQAvD_BwE"))
       
        shop_item = self.new
        shop_item.name = doc.search("a.adSrcClass").css("span").first.text.strip
        shop_item.price = doc.search(".proProperty").css("span").first.text.strip
        shop_item.availability = true
        

        shop_item
        # binding.pry
    end
end

# portfolio_1 = self.new
#         portfolio_1.name = "Graphic Design Portfolio"
#         portfolio_1.price = "Free"
#         portfolio_1.availability = true
#         portfolio_1.url = "https://www.wix.com/website-template/view/html/1581?siteId=f2f3c43c-e472-4b61-ad24-162ad6839dc1&metaSiteId=e6926b7b-6b4b-4cf4-9ef3-832cd136290a&originUrl=https%3A%2F%2Fwww.wix.com%2Fwebsite%2Ftemplates%2Fhtml%2Fportfolio-cv%2Fportfolios"


#         portfolio_2 = self.new
#         portfolio_2.name = "Actor Portfolio"
#         portfolio_2.price = "Free"
#         portfolio_2.availability = true
#         portfolio_2.url = "https://www.wix.com/website-template/view/html/2312?siteId=36e4a599-4a2a-45a5-b573-e713d4501232&metaSiteId=e1c0df8f-e48d-413b-a186-5296dd19bf3e&originUrl=https%3A%2F%2Fwww.wix.com%2Fwebsite%2Ftemplates%2Fhtml%2Fportfolio-cv%2Fportfolios"
    
#         [portfolio_1, portfolio_2]