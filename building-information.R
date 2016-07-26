library(lubridate)
library(rjson)

api.url<-"http://apis.data.go.kr/1611000/BldRgstService/getBrRecapTitleInfo?"
service.key<-"8PZnRzZb4yXsXJQVBDX74xuf8kHhF4cmY5XnEO9apteNWtahGwpA9%2FjrthHB0tX7GBlm9zN1A%2F0rKCx3wGe27g%3D%3D"

sigunguCd<-vector(mode="character",length=1),#시군구 코드(필수) 
bjdongCd<-vector(mode="character",length=1),#법정동 코드(필수) 
platGbCd<-vector(mode="character",length=1), # 대지구분코드
bun<-vector(mode="character",length=1), # 번
ji<-vector(mode="character",length=1), #지
startDate<-vector(mode="character",length=1), #검색시작일 
endDate<-vector(mode="character",length=1), # 검색종료일 
numOfRows<-vector(mode="character",length=1), # 리스트 수
pageNo<-vector(mode="character",length=1), # 페이지 번호 

final.url<-paste0(api.url,"sigunguCd=",sigunguCd,"&bjdongCd=",bjdongCd,"&bun=",bun,"&ji=",ji,"&ServiceKey=",service.key)
req<-GET(final.url)
building.data<-content(req,as="parsed",type="application/json",encoding = "utf-8")

# 아직은 모든 변수를 수기로 입력해야 하는 단점이 있습니다. 
# 행정정보 시스템의 법정동 코드 시스템과 연계가 필요합니다. 




