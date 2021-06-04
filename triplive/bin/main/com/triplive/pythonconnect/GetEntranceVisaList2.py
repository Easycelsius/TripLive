

# In[2]:


# -*- coding:utf-8 -*-
import pymysql  # 또는 mysql

# 크롤링
import requests
import pandas as pd
from openpyxl.workbook import Workbook


# 인증키 입력
service_key = "VkFpJGnDjh7IRcRPA2NVbhxPLbpNjpNYgpDwwBqLMIzcFuooSit1B6qEFKRCc9WaXnmW5RQD60W3wI6YLOXGOQ%3D%3D"

# 빈 데이터프레임 생성
getEntranceVisaList2 = pd.DataFrame()

# 요청주소 입력
url = 'http://apis.data.go.kr/1262000/EntranceVisaService2/getEntranceVisaList2'
queryParams = '?' + 'ServiceKey=' + service_key + '&returnType=' + 'JSON' + '&numOfRows=' + '2000' + '&pageNo=' + '1'

# 주소 요청
request = requests.get(url + queryParams)
print(url+queryParams) # 주소 확인용

# 빈 데이터프레임 + 새로운 데이터프레임 합치기
getEntranceVisaList2 = pd.concat([getEntranceVisaList2, pd.DataFrame(request.json()['data'])]) # 제이슨 형태로 변환 후, 'data'만 뽑아서 데이터프레임화
getEntranceVisaList2.drop_duplicates() # 중복제거

# 데이터프레임 출력
# print(getCountryAgreementList2)

# 엑셀로 저장
# getCountryAgreementList2.to_excel("getCountryAgreementList2.xlsx")
# print(type(getCountryAgreementList2))


# In[3]:


config = {
    "user": "dev",
    "password": "siat",
#     "host": "triplive.cuemagcfl9gh.ap-northeast-2.rds.amazonaws.com",
    "host":"triplive.cuemagcfl9gh.ap-northeast-2.rds.amazonaws.com",
    "database": "triplive",  # Database name
    "port": 3306,  # port는 최초 설치 시 입력한 값(기본값은 3306)
    "charset": "utf8"
}


# 값 추가 함수, 매개변수 1 = table 명 / 매개변수 2 = 데이터프레임 형식
def insert(table, df):
    
    try:
        conn = pymysql.connect(**config)
        print(conn)
        # db select, insert, update, delete 작업 객체
        cursor = conn.cursor()
        # 실행할 select 문 구성
        sql = "INSERT INTO {}"+"("+(", ".join(df.columns.tolist()))+")"+" VALUES"
        sql = sql.format(table)
        sql += "(" + ("%s," * (len(df.columns) - 1)) + "%s)"
        
        # cursor 객체를 이용해서 수행한다.
        print(sql)
        cursor.executemany(sql, df.where((pd.notnull(df)), None).values.tolist())
        conn.commit()

    except pymysql.Error as err:

        print(err)
        
# 비우는 함수
def vacate(table):
    
    try:
        conn = pymysql.connect(**config)
        print(conn)
        # db select, insert, update, delete 작업 객체
        cursor = conn.cursor()
        # 실행할 select 문 구성
        sql = "truncate {}".format(table)
        
        # cursor 객체를 이용해서 수행한다.
        print(sql)
        cursor.execute(sql)
        conn.commit()

    except pymysql.Error as err:

        print(err)
        

# 테이블 비우는 함수 실행
vacate('getentrancevisalist2')

# 값을 넣는 함수 실행
insert('getentrancevisalist2', getEntranceVisaList2)

    

