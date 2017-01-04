"""
Simple iOS tests, showing accessing elements and getting/setting text from them.
"""
import unittest
import os
from random import randint
from appium import webdriver
from time import sleep

class SimpleIOSTests(unittest.TestCase):

    def setUp(self):
        # set up appium
        app = os.path.abspath('../../apps/HHH/build/Release-iphonesimulator/HHH.app')
        self.driver = webdriver.Remote(
            command_executor='http://127.0.0.1:4723/wd/hub',
            desired_capabilities={
                'app': app,
                'platformName': 'iOS',
                'platformVersion': '10.1.1',
                'deviceName': 'denglibing_i7',
            })

    def tearDown(self):
        self.driver.quit()

    def test_scroll(self):
        self.driver.find_element_by_accessibility_id('button').click()

        sleep(1)
        try:
            sleep(1)
        except:
            pass


if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(SimpleIOSTests)
    unittest.TextTestRunner(verbosity=2).run(suite)
