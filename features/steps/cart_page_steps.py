from selenium.webdriver.common.by import By
from behave import given, when, then
from time import sleep

@given("Open target.com")
def open_target(context):
    context.driver.get('https://www.target.com/')

@when("Click on Cart icon")
def click_on_cart_icon(context):
    context.driver.find_element(By.CSS_SELECTOR, "div[data-test*='CartIcon']").click()
    sleep(5)
@then("Verify “Your cart is empty” message is shown")
def verify_cart_is_empty(context):
    actual_text = context.driver.find_element(By.XPATH, "//h1[text()='Your cart is empty']").text
    assert "Your cart is empty" in actual_text, f'Error! text "Your cart is empty" not in {actual_text}'