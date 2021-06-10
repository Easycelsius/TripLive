import pymysql  # 또는 mysql
import re #re.sub를 위해 필요

# 크롤링
import requests
import pandas as pd
from openpyxl.workbook import Workbook
import json
import xmltodict
from pandas import json_normalize

def xmltojson(a):
    dict_type = xmltodict.parse(a.text)
    json_type = json.dumps(dict_type)
    dict_type2 = json.loads(json_type)
    return dict_type2

def convert(name): #직접 정의한 함수 (카멜 -> 스네이크 표기법)
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
    return re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1).lower()

# 인증키 입력
service_key = "VkFpJGnDjh7IRcRPA2NVbhxPLbpNjpNYgpDwwBqLMIzcFuooSit1B6qEFKRCc9WaXnmW5RQD60W3wI6YLOXGOQ%3D%3D"

# 빈 데이터프레임 생성
getTravelBanList = pd.DataFrame()

# 요청주소 입력
url = 'http://apis.data.go.kr/1262000/TravelBanService/getTravelBanList'
queryParams = '?' + 'ServiceKey=' + service_key + '&returnType=' + 'JSON' + '&numOfRows=' + '1000' + '&pageNo=' + '1'

# 주소 요청
request = requests.get(url + queryParams)
print(url+queryParams) # 주소 확인용

# 빈 데이터프레임 + 새로운 데이터프레임 합치기
request = json_normalize(xmltojson(request)['response']['body']['items']['item'])
getTravelBanList = pd.concat([getTravelBanList, pd.DataFrame(request)]) # 제이슨 형태로 변환 후, 'data'만 뽑아서 데이터프레임화
getTravelBanList.drop_duplicates() # 중복제거
getTravelBanList.rename(columns={x: convert(x) for x in getTravelBanList.columns}, inplace=True)

# 데이터프레임 출력
# print(getCountryNoticeList)

# 엑셀로 저장
# getCountryNoticeList.to_excel("getCountryNoticeList.xlsx")


# In[4]:


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
vacate('gettravelbanlist')

# 값을 넣는 함수 실행
insert('gettravelbanlist', getTravelBanList)

    

