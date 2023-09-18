# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,3,6,4,3,1)
KR = c(1,1,4,3,4,0)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,3,2,3,1)
KR = c(1,2,7,5,4,0)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,2,4,5,1)
KR = c(1,0,5,3,1,0)
ETC = c(0,3,3,0,1,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("앞서 말씀하신 다른 게임들과 비교했을 때 우리 게임은 어디에 해당하나요.png", dpi=1600, dev='png', height=5, width=12, units="in")











# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,3,2,8,4)
KR = c(0,0,4,2,3,4)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,1,2,5,3)
KR = c(0,0,6,2,6,5)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,2,1,5,5)
KR = c(0,0,2,3,3,2)
ETC = c(0,0,3,0,3,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("퍼즐 블록과 타일의 크기는 어떻게 느껴졌나요.png", dpi=1600, dev='png', height=5, width=12, units="in")








# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,5,1,5,2,4)
KR = c(0,3,0,4,3,3)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,0,3,2,4)
KR = c(0,6,1,6,3,3)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,5,0,1,4,3)
KR = c(0,2,1,4,1,2)
ETC = c(0,1,0,4,0,2)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("퍼즐 블록과 파워업은 구분이 잘 되었나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,3,2,2,3,6)
KR = c(1,1,1,3,4,3)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,1,1,3,4)
KR = c(2,2,2,4,4,5)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,0,4,4,5)
KR = c(1,3,2,0,2,2)
ETC = c(1,1,1,1,1,2)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("퍼즐 블록의 외형 컨셉은 어떻게 생각하나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,5,3,1,2,4)
KR = c(0,4,1,2,4,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,3,1,1,2,4)
KR = c(2,6,3,2,4,2)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,4,0,2,3,3)
KR = c(1,2,3,1,1,2)
ETC = c(0,3,1,0,2,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("파워업의 외형 컨셉은 어떻게 생각하나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# 장애물기믹 = 퍼즐 재미 저장 안함;;;




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,4,2,4,3,3)
KR = c(0,4,1,3,2,3)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,1,1,3,2,3)
KR = c(0,7,2,4,3,3)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,2,3,3,3)
KR = c(0,5,0,1,1,3)
ETC = c(1,1,1,3,1,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("장애물 기믹이 스토리와 연관이 있다고 느껴졌나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,3,7,4,2)
KR = c(1,1,2,3,2,4)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,2,5,3,1)
KR = c(1,2,3,5,3,5)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,1,2,3,2,4)
KR = c(0,1,2,4,1,2)
ETC = c(0,0,1,3,3,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("파워업의 성능은 적절했나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,1,2,3,6,4)
KR = c(0,0,2,6,3,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,2,4,3,1)
KR = c(1,0,2,5,6,5)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,1,3,6,3)
KR = c(0,0,2,4,1,3)
ETC = c(1,1,1,2,2,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("아이템의 성능은 적절했나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,3,2,2,4,6)
KR = c(1,2,1,4,3,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,1,4,2,3)
KR = c(1,4,2,2,5,5)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,1,2,1,5,3)
KR = c(0,2,1,3,1,3)
ETC = c(0,2,0,2,1,2)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("파워업 사용시 이펙트(타격감)가 적절하다고 생각하시나요.png", dpi=1600, dev='png', height=5, width=12, units="in")






# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,3,1,4,4,5)
KR = c(0,2,3,4,2,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,1,5,2,2)
KR = c(0,4,3,3,4,5)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,2,4,3,3)
KR = c(0,2,1,3,2,2)
ETC = c(2,1,1,1,2,7)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("아이템 사용시 이펙트(타격감)가 적절하다고 생각하시나요.png", dpi=1600, dev='png', height=5, width=12, units="in")







# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,6,1,5,3,2)
KR = c(1,2,3,3,3,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,1,5,2,1)
KR = c(1,6,3,3,4,2)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,2,2,3,4,1)
KR = c(0,4,1,2,1,2)
ETC = c(0,2,1,3,1,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("클리어 목표를 직관적으로 이해하기 쉬웠나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,4,6,4,2)
KR = c(0,2,0,2,6,3)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,2,0,5,3)
KR = c(0,2,2,8,5,2)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,1,1,5,4)
KR = c(0,1,3,4,1,1)
ETC = c(0,0,0,3,4,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("클리어시 나타나는 시각 효과에 대해 어떻게 생각하시나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,8,3,2,2,0)
KR = c(3,4,2,2,0,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(3,4,3,0,0,1)
KR = c(2,8,2,4,2,1)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,3,1,4,1,2)
KR = c(2,4,3,0,1,0)
ETC = c(1,5,1,0,0,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("퍼즐 하단의 아이템 아이콘의 모양과 효과가 직관적으로 이해되었나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,3,5,5,1,3)
KR = c(0,0,5,5,3,0)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,4,6,0,1)
KR = c(0,3,6,4,4,2)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,3,5,4,1)
KR = c(0,1,5,3,0,1)
ETC = c(0,2,2,2,0,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("전반적인 퍼즐 진행 화면 UI에 대해 어떻게 생각하시나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,6,7,2,1,1)
KR = c(3,4,1,4,1,0)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,3,2,3,1,1)
KR = c(2,7,6,3,1,0)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,3,2,4,2,0)
KR = c(1,4,3,2,0,0)
ETC = c(0,3,3,0,0,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("퍼즐 클리어시 보상이 적절하다고 생각하시나요.png", dpi=1600, dev='png', height=5, width=12, units="in")








# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,2,1,1,7,5)
KR = c(2,1,2,2,3,3)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,2,1,1,7,5)
KR = c(2,1,2,2,3,3)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,1,1,1,3,6)
KR = c(1,1,2,0,5,1)
ETC = c(1,1,0,2,2,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type2 + c_type2 + plot_layout(guides = 'collect') + ggsave("주인공 캐릭터의 외형은 매력적이었나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,3,1,3,6,2)
KR = c(2,1,4,3,2,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,2,2,2,1,2)
KR = c(2,2,3,4,7,1)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,4,3,3,2)
KR = c(3,1,1,1,3,1)
ETC = c(1,2,0,2,2,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("주인공 캐릭터의 연출은 재미가 있었나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(3,3,3,2,4,2)
KR = c(1,1,4,3,3,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,3,3,1,3,1)
KR = c(4,1,4,4,4,2)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,0,3,4,3,1)
KR = c(2,2,2,0,2,2)
ETC = c(0,2,2,1,2,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("스토리가 재미 있었나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,2,3,1,4,5)
KR = c(0,1,3,3,4,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,2,1,0,4,3)
KR = c(1,1,5,4,4,4)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,1,4,3,4)
KR = c(2,1,3,0,2,2)
ETC = c(0,1,2,0,3,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("스토리는 이해하기 쉬웠나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(4,2,1,3,3,4)
KR = c(1,1,7,2,0,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(3,0,3,3,0,2)
KR = c(2,3,5,2,3,4)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,1,5,1,1,4)
KR = c(3,1,1,2,1,2)
ETC = c(1,1,2,2,1,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("등장 인물들은 매력적이었나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,4,2,4,2,3)
KR = c(0,3,1,4,4,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,1,1,3,2,3)
KR = c(1,6,2,5,4,1)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,1,5,4,2)
KR = c(1,4,1,1,2,1)
ETC = c(1,2,1,2,0,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("스토리 진행이 퍼즐 플레이와 연관 있다고 느껴졌나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(2,8,4,1,0,2)
KR = c(3,4,1,3,1,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,4,4,0,0,2)
KR = c(4,8,1,4,1,1)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,5,1,3,1,2)
KR = c(3,4,1,1,0,1)
ETC = c(1,3,3,0,0,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("스토리가 퍼즐 플레이의 동기 부여를 적절히 하고 있나요.png", dpi=1600, dev='png', height=5, width=12, units="in")


# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,6,1,4,3,3)
KR = c(2,3,3,1,3,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,5,1,1,3,1)
KR = c(2,4,3,4,3,3)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,4,3,1,3,1)
KR = c(1,3,1,2,2,1)
ETC = c(0,2,0,2,1,2)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("오르트 볼을 꾸밀 수 있다는 점을 이해하는데 어려움이 없었나요.png", dpi=1600, dev='png', height=5, width=12, units="in")






# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,4,6,2,1,3)
KR = c(0,2,2,2,4,3)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,3,1,2,3)
KR = c(1,4,5,3,3,3)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,4,2,3,3)
KR = c(0,2,3,1,2,2)
ETC = c(1,3,1,1,0,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("오르트 볼을 꾸미고 싶다는 생각이 들었나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,4,5,6,2)
KR = c(0,0,2,4,5,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,3,2,4,2)
KR = c(0,0,3,7,7,2)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,0,4,2,7)
KR = c(0,0,3,3,3,1)
ETC = c(0,0,3,2,1,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("오르트 볼의 오브젝트 컨셉은 어땠나요 (모양 디자인).png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(4,5,4,4,0,0)
KR = c(2,5,2,2,1,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(3,4,2,1,0,1)
KR = c(3,6,4,5,1,0)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(3,2,3,3,1,1)
KR = c(1,5,1,3,0,0)
ETC = c(2,3,2,0,0,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("오르트 볼에 가구 배치를 배치하는 과정이 만족스러웠나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,8,2,3,3,1)
KR = c(0,3,4,4,1,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,5,1,2,2,1)
KR = c(0,6,5,5,2,1)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,3,2,4,3,1)
KR = c(0,6,2,1,0,1)
ETC = c(0,2,2,2,1,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("뽑기 콘텐츠의 디자인(그래픽)은 어땠나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,3,4,3,4,2)
KR = c(0,0,3,6,4,0)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,2,4,4,0)
KR = c(1,2,5,5,4,2)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,1,6,5,1)
KR = c(1,3,3,1,1,1)
ETC = c(0,0,3,2,2,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("뽑기 BGM은 게임과 어울렸나요.png", dpi=1600, dev='png', height=5, width=12, units="in")





# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,6,5,4,1,1)
KR = c(0,1,4,4,3,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,3,4,1,1)
KR = c(0,5,6,4,3,1)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,2,5,3,1)
KR = c(0,4,3,2,0,1)
ETC = c(0,1,4,1,1,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("뽑기로 얻은 보상에 가치(매력)가 있다고 생각하시나요.png", dpi=1600, dev='png', height=5, width=12, units="in")








# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,1,9,1,6)
KR = c(0,0,2,2,2,7)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,0,2,2,7)
KR = c(0,0,3,9,1,6)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,0,1,4,0,8)
KR = c(0,0,0,5,2,3)
ETC = c(0,0,2,2,1,2)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("게임이 출시했을 때, 뽑기를 한번 이상 해보실 것 같나요.png", dpi=1600, dev='png', height=5, width=12, units="in")






# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,7,6,0,2,2)
KR = c(1,4,2,2,3,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,6,2,1,2,0)
KR = c(1,5,6,1,3,3)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,5,1,2,3,2)
KR = c(1,1,5,0,2,1)
ETC = c(0,5,2,0,0,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("게임의 전반적인 난이도는 어땠나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(4,7,3,3,0,0)
KR = c(2,4,2,5,0,0)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(1,7,2,1,0,0)
KR = c(5,4,3,7,0,0)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(4,2,2,5,0,0)
KR = c(1,6,1,2,0,0)
ETC = c(1,3,2,1,0,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("스텔라 테일즈는 운과 실력 중 어느 요소가 더 중요하다고 생각하나요.png", dpi=1600, dev='png', height=5, width=12, units="in")




# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,3,3,5,5,1)
KR = c(0,2,3,4,3,1)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,2,5,3,0)
KR = c(0,4,4,4,5,2)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,1,2,4,5,1)
KR = c(0,2,2,4,1,1)
ETC = c(0,2,2,1,2,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("종합적으로 고려했을 때 이번 빌드에 몇 점을 부여하시겠습니까.png", dpi=1600, dev='png', height=5, width=12, units="in")






# Data
k = c('부정', '중립', '긍정')
EN = c(10,4,3)
KR = c(7,4,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('부정', '중립', '긍정')
EN = c(7,3,1)
KR = c(10,5,4)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('부정', '중립', '긍정')
EN = c(6,4,3)
KR = c(5,3,1)
ETC = c(5,1,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)






a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("NPS 그래프.png", dpi=1600, dev='png', height=5, width=12, units="in")






# Data
k = c('0회','11-15회','16회+','3-5회','6-10회')
EN = c(1,3,5,7,1)
KR = c(1,1,4,2,5)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('0회','11-15회','16회+','3-5회','6-10회')
EN = c(0,1,4,4,2)
KR = c(2,3,5,5,4)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('0회','11-15회','16회+','3-5회','6-10회')
EN = c(1,1,6,3,2)
KR = c(0,2,2,4,2)
ETC = c(1,1,1,2,2)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)




a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
a_type2 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("뽑기를 얼마나 시도했나요.png", dpi=1600, dev='png', height=5, width=12, units="in")






# Data
k = c('그렇다','아니다', '모르겠다')
EN = c(4,2,11)
KR = c(5,4,4)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('그렇다','아니다', '모르겠다')
EN = c(4,0,7)
KR = c(5,6,8)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('그렇다','아니다', '모르겠다')
EN = c(6,3,4)
KR = c(0,2,8)
ETC = c(3,1,3)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)


k = c('그렇다','아니다', '모르겠다')
EN = c(9,6,15)
data = data.frame(k, EN) %>% filter(EN != 0)

d_type = ggPie(data=data,aes(pies=k,count=EN))



a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
(a_type2 + b_type1) / (c_type2 + d_type) + plot_layout(guides = 'collect') + ggsave("게임의 난이도는 선형적으로 증가한 것 같나요.png", dpi=1600, dev='png', height=8, width=12, units="in")







# Data
k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(12,3,2)
KR = c(7,4,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(9,2,0)
KR = c(10,5,4)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(8,3,2)
KR = c(6,3,1)
ETC = c(5,1,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)


k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(19,7,4)
data = data.frame(k, EN) %>% filter(EN != 0)

d_type = ggPie(data=data,aes(pies=k,count=EN))



a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
(a_type2 + b_type1) / (c_type2 + d_type) + plot_layout(guides = 'collect') + ggsave("오르트볼의 지형 환경 볼 이펙트 배경을 바꿀수 있다는 점을 이해하기 쉬웠나요.png", dpi=1600, dev='png', height=8, width=12, units="in")





# Data
k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(8,8,1)
KR = c(4,7,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(6,5,0)
KR = c(6,10,3)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(2,9,2)
KR = c(5,4,1)
ETC = c(5,2,0)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)


k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(12,15,3)
data = data.frame(k, EN) %>% filter(EN != 0)

d_type = ggPie(data=data,aes(pies=k,count=EN))



a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
(a_type2 + b_type1) / (c_type2 + d_type) + plot_layout(guides = 'collect') + ggsave("가구의 크기별로 배치할 수 있는 위치가 다르다는 사실을 이해하기 쉬웠나요.png", dpi=1600, dev='png', height=8, width=12, units="in")








# Data
k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(6,10,1)
KR = c(1,9,3)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(2,7,2)
KR = c(5,12,2)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(3,8,2)
KR = c(2,7,1)
ETC = c(2,4,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)


k = c('어려웠다','쉬웠다', '경험하지 못했다')
EN = c(7,19,4)
data = data.frame(k, EN) %>% filter(EN != 0)

d_type = ggPie(data=data,aes(pies=k,count=EN))



a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
(a_type2 + b_type1) / (c_type2 + d_type) + plot_layout(guides = 'collect') + ggsave("아이템이 필요할 때 적재 적소에서 아이템을 구매할 수 있었나요.png", dpi=1600, dev='png', height=8, width=12, units="in")




# Data
k = c('그렇다','아니다')
EN = c(13,4)
KR = c(11,2)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('그렇다','아니다')
EN = c(10,1)
KR = c(14,5)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('그렇다','아니다')
EN = c(9,4)
KR = c(9,1)
ETC = c(6,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)


k = c('그렇다','아니다')
EN = c(24,6)
data = data.frame(k, EN) %>% filter(EN != 0)

d_type = ggPie(data=data,aes(pies=k,count=EN))



a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
(a_type2 + b_type1) / (c_type2 + d_type) + plot_layout(guides = 'collect') + ggsave("게임 내 컨텐츠에 접근하기 위해 어려움을 겪은적이 한번 이상 존재했나요.png", dpi=1600, dev='png', height=8, width=12, units="in")







# Data
k = c('재미 있어졌다','모르겠다', '참여하지 않았다')
EN = c(7,3,7)
KR = c(5,1,7)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('재미 있어졌다','모르겠다', '참여하지 않았다')
EN = c(11,0,0)
KR = c(1,4,14)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)



# Data
k = c('재미 있어졌다','모르겠다', '참여하지 않았다')
EN = c(3,1,9)
KR = c(4,2,4)
ETC = c(5,1,1)
line = c(EN,KR,ETC)
cat = c(rep('20대', length(EN)), rep('30대', length(KR)), rep('40대+', length(ETC))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(cat) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(cat)
data$cat = factor(data$cat, levels = data2$cat) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(cat, k)

c_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
c_type2 = ggPieDonut(data2,aes(pies=cat,donuts=k,count=line),labelposition=1)


k = c('재미 있어졌다','모르겠다', '참여하지 않았다')
EN = c(12,4,14)
data = data.frame(k, EN) %>% filter(EN != 0)

d_type = ggPie(data=data,aes(pies=k,count=EN))



a_type1 
a_type2
b_type1 
b_type2
c_type1 
c_type2


# 이거 쓸듯.
(a_type2 + b_type1) / (c_type2 + d_type) + plot_layout(guides = 'collect') + ggsave("이전 빌드와 비교했을때 어느정도 개선 되었나요.png", dpi=1600, dev='png', height=8, width=12, units="in")

