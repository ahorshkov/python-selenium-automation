from selenium.webdriver.common.by import By
from behave import given, when, then
from time import sleep

@when('Click Website feedback')
def click_website_feedback(context):
    context.app.feedback_form.click_website_feedback()