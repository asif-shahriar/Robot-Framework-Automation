from robot.api.deco import keyword
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager
from selenium.webdriver.chrome.service import Service


@keyword
def get_selenium_webdriver_path(browser):

    if browser.lower() == 'chrome':
        driver_path = ChromeDriverManager().install()
    elif browser.lower() == 'firefox':
        driver_path = GeckoDriverManager().install()
    elif browser.lower() == 'edge':
        driver_path = EdgeChromiumDriverManager().install()

    print(f'Driver path is {driver_path}')
    return driver_path
