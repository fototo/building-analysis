library(XML)
orignalUrl<-"http://apis.data.go.kr/1611000/BldEngyService/getBeElctyUsgInfo?"#공공데이터 주소 입력 
api_key<-"8PZnRzZb4yXsXJQVBDX74xuf8kHhF4cmY5XnEO9apteNWtahGwpA9%2FjrthHB0tX7GBlm9zN1A%2F0rKCx3wGe27g%3D%3D"#API key 값 입력

#특정 데이터를 볼러오기 위한 인수 입력/전부다 필요한 것은 아님
items<-list(
rnum<-vector(mode="numeric",length=8),# 순번
useYm<-vector(mode="character",length=6), #사용년월(필수)
platPlc<-vector(mode="character",length=500), #대지위치(필수)
newPlatPlc<-vector(mode="character",length=400), # 도로명 대지위치
sigunguCd<-vector(mode="character",length=5),#시군구 코드 
bjdongCd<-vector(mode="character",length=5),#법정동 코드(필수) 
platGbCd<-vector(mode="character",length=1), # 대지구분코드(필수) 
bun<-vector(mode="character",length=4), # 번
ji<-vector(mode="character",length=4), #지
naRoadCd<-vector(mode="character",length=4), #새주소도로 코드 
naUgrndCd<-vector(mode="character",length=12), # 새주소 지상지 
naMainBun<-vector(mode="character",length=5), # 새주소 본번
naSubBun<-vector(mode="character",length=5), # 새주소 부번
useQty<-vector(mode="character",length=22) # 사용량 
)

for(i in 1:14) {
  itemUrl<-paste(itmeUrl,"&",items[i])
} # 입력된 지역정보를 모두 더해서 하나의  URL을 만든다.

fileUrl<-paste(orignalUrl,"&",itemUrl,"&" api_key)  #최종 API 주소 호출 
