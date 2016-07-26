library(lubridate)
library(XML)
url<-"http://apis.data.go.kr/1611000/BldRgstService/getBrRecapTitleInfo?"
service.key<-"8PZnRzZb4yXsXJQVBDX74xuf8kHhF4cmY5XnEO9apteNWtahGwpA9%2FjrthHB0tX7GBlm9zN1A%2F0rKCx3wGe27g%3D%3D"

items<-data.frame(
  sigunguCd<-vector(mode="character",length=1),#시군구 코드(필수) 
  bjdongCd<-vector(mode="character",length=1),#법정동 코드(필수) 
  platGbCd<-vector(mode="character",length=1), # 대지구분코드
  bun<-vector(mode="character",length=1), # 번
  ji<-vector(mode="character",length=1), #지
  startDate<-vector(mode="character",length=1), #검색시작일 
  endDate<-vector(mode="character",length=1), # 검색종료일 
  numOfRows<-vector(mode="character",length=1), # 리스트 수
  pageNo<-vector(mode="character",length=1), # 페이지 번호 
)

item.url<-vector(mode="character")

for(i in 1:9) {
  item.url<-paste(item.url,"&",items[i])
} # 입력된 지역정보를 모두 더해서 하나의  URL을 만든다.

fileUrl<-paste(url,"&",itemurl,"&ServiceKey=" service.key)
