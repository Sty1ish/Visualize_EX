library(data.table)
library(dplyr)
library(reticulate)
library(patchwork)
library(ggplot2)
library(ggiraphExtra)
library(ggthemes)

setwd('C:/Users/stylish1379_2bytesco/Desktop/R Reporting Templete')
# 색상 변환
# https://stackoverflow.com/questions/68095243/piedonut-how-to-change-color-of-pie-and-donut

# 아니면 이 플롯 쓰던지?
# https://cardiomoon.github.io/webr/reference/PieDonut.html

# ecdf 그리기
leveldf = data.frame(1:400)
colnames(leveldf) = 'level'
levels = c(122,51,127,185,195,47,271,164,400,97,236,199,157,169,249,241,189,
           108,121,27,189,225,117,50,18,137,105,189,189,117,50,18,137,109,189,189,117)
cdf_levels = c()

# 계산하고
for (i in leveldf$level) {
  cdf_levels = c(cdf_levels, sum(i <= levels))
}
pct = cdf_levels / cdf_levels[1]

# 누적 분포 얻고
leveldf = cbind(leveldf, cdf_levels, pct)

# 그리고
ggplot(data=leveldf, aes(x=level, y=pct)) + geom_line(size=0.7, color = 'black') +
  theme_classic()+
  theme(axis.title.y = element_blank())+
  scale_x_continuous('level', limits=c(0,400), breaks = seq(0, 400, 25))+
  scale_y_continuous('pct', limits=c(0,1)) +
  labs(y = NULL) + 
  geom_vline(xintercept=100, linetype = 'dashed', color = 'red')


# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,3,6,4,3,1)
KR = c(1,1,4,3,4,0)
line = c(EN,KR)
cat = c(rep('남성', length(EN)), rep('여성', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),] 

data2 = data %>% group_by(k) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(k)
data$k = factor(data$k, levels = data2$k) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(k, cat)

a_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
a_type2 = ggPieDonut(data2,aes(pies=k,donuts=cat,count=line),labelposition=0)



# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
EN = c(0,2,3,2,3,1)
KR = c(1,2,7,5,4,0)
line = c(EN,KR)
cat = c(rep('기존 참가자', length(EN)), rep('첫 참가자', length(KR))) 
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line) %>% filter(line != 0)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(k) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(k)
data$k = factor(data$k, levels = data2$k) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(k, cat)

b_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=0)
b_type2 = ggPieDonut(data2,aes(pies=k,donuts=cat,count=line),labelposition=0)



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
a_type1 + b_type1 + c_type2 + plot_layout(guides = 'collect') + ggsave("앞서 말씀하신 다른 게임들과 비교했을 때 우리 게임은 어디에 해당하나요.png", dpi=1600, dev='png', height=5, width=12, units="in")








#%%


# Data
k = c('1점', '2점', '3점', '4점', '5점', '6점')
range1 = c(10,20,30,50,40,30)
range2 = c(15,18,22,64,32,40)
range3 = c(15,18,22,64,32,40)
range4 = c(15,18,22,64,32,40)
line = c(range1, range2, range3, range4)
cat = c(rep('-50', length(EN)), rep('51-100', length(EN)), rep('101-150', length(KR)), rep('150-', length(EN)))
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함. (대분류는 내림차순으로 정렬되어야 함)

data = data.frame(cat, k, line)
data = data[order(data$cat, decreasing = TRUE),]

data2 = data %>% group_by(k) %>% summarise(line = sum(line)) %>% arrange(desc(line)) %>% select(k)
data$k = factor(data$k, levels = data2$k) # 이부분 유의. data 테이블이 변경되었다.
data2 = data %>% arrange(k, cat)

d_type1 = ggPieDonut(data, aes(x = c(cat, k), y=line),labelposition=1)
d_type2 = ggPieDonut(data2,aes(pies=k,donuts=cat,count=line),labelposition=1)

# (a_type1 + b_type1) / (c_type1 + d_type1) + plot_layout(guides = 'collect') + ggsave("212121 figure1_dpi1600.png", dpi=1600, dev='png', height=8, width=8, units="in")

# 잘 안쓸듯.
# a_type2 + b_type2 + c_type2 + plot_layout(guides = 'collect') + ggsave("212121 figure2_dpi1200.png", dpi=1600, dev='png', height=5, width=12, units="in")
