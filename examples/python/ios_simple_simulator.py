"""
Simple iOS tests, showing accessing elements and getting/setting text from them.
http://blog.csdn.net/xiaosongbk/article/details/52884837
https://docs.python.org/2.7/library/unittest.html#
"""
import unittest
import os
from random import randint
from appium import webdriver
from time import sleep
import time
import HTMLTestRunner

class SimpleIOSTests(unittest.TestCase):

    def setUp(self):
        # set up appium
        # http://appium.io/slate/cn/master/?ruby#appium

#        app = os.path.abspath('/Users/denglibing/Library/Developer/Xcode/DerivedData/Fangduoduo-ggdhbkqeynozvnecriohuprtublh/Build/Products/Release-iphonesimulator/Fangduoduo.app')
        app = os.path.abspath('../../apps/HHH/build/Release-iphonesimulator/HHH.app')
        self.driver = webdriver.Remote(
                               command_executor='http://127.0.0.1:4723/wd/hub',
                               desired_capabilities={
                               'app': app,
                               'platformName': 'iOS',
                               'platformVersion': '10.2',
                               'deviceName': 'iPhone 7',
                               })

#        app = os.path.abspath('../../apps/HHH/build/Release-iphoneos/HHH.app')
#        self.driver = webdriver.Remote(
#            command_executor='http://127.0.0.1:4723/wd/hub',
#            desired_capabilities={
#                'app': app,
#                'platformName': 'iOS',
#                'platformVersion': '10.1.1',
#                'deviceName': 'denglibing_i7',
#                'automationName': 'XCUITest',
#                'bundleId': 'com.youlian365.youyubao',
#                'udid': 'bc7c227a4d06b6794a288459cc0255254d8e7e27',
#            })

#    def tearDown(self):
#        self.driver.quit()

    def test_action(self):
        
        sleep(5)
        
        lbbb = self.driver.find_element_by_accessibility_id("label")
        print("lbbb.text %s" % (lbbb.text))
        

        if lbbb.text == "appium test succeed" :
            self.driver.find_element_by_accessibility_id('button').click()
    
            bbbb = self.driver.find_element_by_accessibility_id("bbbb")

            sleep(1)
            lbbb = self.driver.find_element_by_class_name("XCUIElementTypeStaticText")
            textF1 = self.driver.find_element_by_name('HHH')
        
            print("HHHHHHHH1 %s" % (self.driver.contexts))
            print("HHHHHHHH2 %s" % (self.driver.page_source))
            print("HHHHHHHH3 %s %s" % (lbbb, textF1))
        
            textF1.send_keys("HHHHHHH")
        
            sleep(1)
            self.driver.hide_keyboard()
        
            bbbb.click()
        
            try:
                sleep(1)
            except:
                pass


        



if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(SimpleIOSTests)
    unittest.TextTestRunner(verbosity=1).run(suite)

    timestr = time.strftime('%Y%m%d%H%M%S',time.localtime(time.time()))
    filename = "/Users/denglibing/Desktop/appiumresult/appiumresult" + timestr + ".html"
    print(filename)
    fp = open(filename, 'wb')
    runner = HTMLTestRunner.HTMLTestRunner(
                                       stream=fp,
                                       title='testresult',
                                       description='testreport'
                                       )
    runner.run(suite)
    fp.close()
