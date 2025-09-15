from robot.api.deco import library,keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class Shop:

    def __init__(self):
        self.selLib=BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def add_items_to_cart_and_checkout(self,productsList):
        productsTitles = self.selLib.get_webelements("css:.card-title")
        i = 1
        for productsTitle in productsTitles:
            if productsTitle.text in productsList:
               self.selLib.click_button("xpath:(//*[@class='card-footer'])["+str(i)+"]/button")
            i=i+1

    # def add_items_to_cart_and_checkout(self, productsList):
    #     productsTitles = self.selLib.get_webelements("css:.card-title")
    #     i = 1
    #     for productsTitle in productsTitles:
    #         title = productsTitle.text.strip().lower()
    #         if any(title == p.lower() for p in productsList):
    #             self.selLib.click_button(f"xpath:(//*[@class='card-footer'])[{i}]/button")
    #         i += 1

    # def add_items_to_cart_and_checkout(self, productsList):
    #     productsTitles = self.selLib.get_webelements("css:.card-title")
    #     i = 1
    #     for productsTitle in productsTitles:
    #         product_name = productsTitle.text.strip().lower()
    #         if any(product_name == p.strip().lower() for p in productsList):
    #             self.selLib.click_button(f"xpath:(//*[@class='card-footer'])[{i}]/button")
    #         i += 1