# 건물 정보 분석(R + 정부 공공데이터 API) 

R을 통해서 대한민국의 건물분석을 위한 프로그램입니다.<br>
정부 공공데이터 포털(https://www.data.go.kr) 에서 API를 JSON파일을 끌어와서 만들었습니다. <br>
목적은 저희 향후 꿈인 태양광발전소의 리스크 분석을 위함입니다. 다른 사람의 건물위(roof-top)에 올라가는 태양광의 특성상, 건물의 수명주기에 따른 리스크가 많습니다.
태양광을 지어진 뒤, 7년쯤 있다가 리모델링이 되서 철거된다든지 말입니다. 

##정부공공데이터 사용시 유의해야할 점 
정부 공공데이터 포털을 활용시 정보가 너무 없어서 고생을 많이했습니다. 공공데이터 포털의 기술설명서로는 부족하더군요. 
API를 접속하면서 몇가지 의문점을 정리하겠습니다. <br>
### 1.ouath-authentication 이 필요한가? <br>
Facebook, twitter, github api를 접속할 때는 반드시 ouath-login과정을 거쳐야 합니다. 사용자 인증을 위함입니다. <br>
]]하지만, 공공데이터 API에서는 ouath-authentication과 같은 과정은 필요가 없습니다.url에 바로 service key를 입력해서 GET(httr) 함수를 통해서 실행하면 됩니다. <br>
예를 들어보겠습니다. 건축물 대장 API의 인증을 받으면 발급되는 것은 서비스키 하나입니다. <br> 
저의경우는 "8PZnRzZb4yXsXJQVBDX74xuf8kHhF4cmY5XnEO9apteNWtahGwpA9%2FjrthHB0tX7GBlm9zN1A%2F0rKCx3wGe27g%3D%3D"입니다. <br>
보통 oauth로그인할 때 주어지는 consumer secret,이나 endpoints는 없습니다. (endpoints는 경우에 따라 있는 경우도 있습니다.}<br>
에서는 url은 "http://apis.data.go.kr/1611000/BldRgstService/getBrRecapTitleInfo?" 입니다.<br></br>
건축물 대장에 API가이드에에서 예시되는 API의 주소는<br> "http://apis.data.go.kr/1611000/BldRgstService/getBrBasisOulnInfo?sigunguCd=11680&bjdongCd=10300&bun=0012&ji=0000&ServiceKey=인증키" 입니다.<br>
기본 API url 이후에 "sigunguCd(시군구 코드)" 와 "bjdongCd(법정동 코드)"는 API내의 <br>
그러므로, 전체 코드는 다음과 구성될 수 있습니다. 
<br></br>
    req<-GET(http://apis.data.go.kr/1611000/BldRgstService/getBrBasisOulnInfo?sigunguCd=11680&bjdongCd=10300&bu n=0012&ji=0000&ServiceKey= 8PZnRzZb4yXsXJQVBDX74xuf8kHhF4cmY5XnEO9apteNWtahGwpA9%2FjrthHB0tX7GBlm9zN1A%2F0rKCx3wGe27g%3D%3D}}}


