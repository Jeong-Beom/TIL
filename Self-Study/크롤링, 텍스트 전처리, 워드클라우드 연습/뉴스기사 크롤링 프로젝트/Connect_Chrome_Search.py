import requests
import pandas as pd
import time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from bs4 import BeautifulSoup
from urllib.parse import quote

# 본인 chromedriver 위치 입력
position = 'C:\\Users\\Bestc\\Desktop\\빅데이터 지능형 서비스 개발과정(멀티캠퍼스)\\설치프로그램\\Selenium\\chromedriver.exe'

def connect_naver(search_words):
    global driver
    driver = webdriver.Chrome(position)
    URL = 'https://www.naver.com/'
    driver.get(URL)
    time.sleep(2)
    input_query = driver.find_element_by_css_selector('.input_text')
    input_query.send_keys(search_words)
    time.sleep(2)
    driver.find_element_by_css_selector('.btn_submit').click()
    time.sleep(2)

def naver_news_page(search_words):
    global driver
    driver = webdriver.Chrome(position)
    URL = 'https://search.naver.com/search.naver?where=news&sm=tab_jum&query=' + quote(search_words)
    driver.get(URL)
    