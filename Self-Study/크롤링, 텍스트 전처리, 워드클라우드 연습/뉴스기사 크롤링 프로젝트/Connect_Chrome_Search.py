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

def press_company_name():
    from tqdm.notebook import tqdm
    global press_company_list
    press_company_list = []
    last_num = 0
    for i in tqdm(range(0, 400)): # 최대 페이지가 400페이지 이므로 400번 반복 > 4000개의 뉴스기사 크롤링
        try:
            html = driver.page_source # 해당페이지의 html 소스 전체를 크롤링 / driver앞에 붙어 있는 Chrome은 모듈 이름에 따라 변경해야합니다.
            soup = BeautifulSoup(html, 'html.parser') # 입력되는 문자열들을 html 형태로 인식하라고 컴퓨터에 입력
            for num in range(last_num + 50): # 1개의 웹페이지상 뉴스기사는 10개이나 html소스 sp_nws의 숫자 증가수치가 불분명하여 임의로 설정한 값입니다.
                try:
                    press_company_tag = f'#sp_nws{num} > div.news_wrap.api_ani_send > div > div.news_info > div.info_group > a.info.press'
                    text = soup.select_one(press_company_tag).text
                    text = text.replace(' 선정', '')
                    if text[-3:] == '언론사': # 수정필요
                        text = text[:-3]
                    press_company_list.append(text)
                    # print(f'sp_nws{num}은 해당페이지에 존재합니다.')
                    last_num = num
                except:
                    pass
            driver.find_element_by_xpath("//*[@id='main_pack']/div[2]/div/a[2]").click()
            time.sleep(3)   
        except:
            print(f'{i+1}페이지까지 자료를 수집하였습니다.') 
            break
    return print(f'최종 페이지 : {i+1}', f'자료를 수집한 페이지 수 : {len(press_company_list)}', f'누락된 기사 수 : {4000 - len(press_company_list)}', sep = '\n') 