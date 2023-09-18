library(data.table)
library(dplyr)
library(reticulate)
library(patchwork)
library(ggplot2)
library(ggiraphExtra)

# 기본 참조
# https://rdrr.io/cran/ggiraphExtra/api/

# 기본 사용형
ggPieDonut(browsers,aes(pies=browser,donuts=version,count=share))
browsers

ggPie(data=browsers,aes(pies=browser,count=share))

# 데이터 형태.
k = c('좋아하는 몇 개의 맵 (1~2개)', '4~6개 정도의 맵',
      '약 10개의 맵','최소한 15개 이상의 맵')
tot = c(10,33,24,20)
EN = c(4,16,15,6)
KR = c(6,17,9,14)

line = c(EN,KR)
cat = c(rep('EN', length(EN)), rep('KR', length(KR)))
# 전제조건들.
# 대분류 / 소분류 / 실수값 순서 반드시 맞춰야함.
# 소분류의 개별값은 고유값이어야 함. (paste 사용 정렬.)
# 대분류 단위로 정렬되어야함. (내림차순으로.)

# k = paste(cat, k)
data = data.frame(cat, k, line)
data = data[order(data$cat, decreasing = TRUE),]


# 따라서 이런 형태로 최종적으로 사용 가능하다.
ggPieDonut(data,aes(pies=cat, donuts=k,count=line))
ggPieDonut(data, aes(x = c(cat,k), y=line),labelposition=0, interactive = TRUE)
ggPie(data %>% filter(cat == 'EN'), aes(x=k, y=line),labelposition=0, interactive = TRUE)


# 물론, patchWorks쓰려면, Interactive를 떼야한다. 이녀석은 ggplot만 합칠수 있기 때문.
aa = ggPieDonut(data,aes(x=c(cat, k), y=line), labelposition=0, title = 'Age_level')

# 이녀석은 라벨이 없어서;; 라벨은 안쓰네.
aa + aa + aa + plot_layout(guides = 'collect')


# GG_save
aa + aa + ggsave("Pie_chart.png", dpi=1000, dev='png', height=20, width=20, units="in")


ggPieDonut(data,aes(pies=cat,donuts=k,count=line))
ggPieDonut(data,aes(x=c(cat, k), y=line), labelposition=0, title = 'Age_level')




# 하나 짜리만 쓰고 싶다면.


# 함수 준비.

theme_clean=function(base_size=12){
  theme_grey(base_size) %+replace%
    theme(
      axis.title=element_blank(),
      axis.text=element_blank(),
      panel.background=element_blank(),
      panel.grid=element_blank(),
      axis.ticks.length=unit(0,"cm"),
      axis.ticks.margin=unit(0,"cm"),
      panel.margin=unit(0,"lines"),
      plot.margin=unit(c(0,0,0,0),"lines"),
      complete=TRUE
    )
}

theme_axis_blank=function(){
  theme(axis.ticks=element_blank(),
        axis.text.x=element_blank(),
        axis.text.y=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank())
}

ggDonut=function(data=acs,donuts="Dx",count=NULL,
                 addPieLabel=TRUE,addDonutLabel=TRUE,showRatio=TRUE,
                 polar=TRUE,labelposition=1){
  if(is.null(count)){
    dat1=ddply(data,donuts,nrow)
    colnames(dat1)[2]="n"
  } else{
    dat1=data
    colnames(dat1)[colnames(dat1)==count]="n"
  }        
  dat1$ymax=cumsum(dat1$n)
  dat1$ymin=cumsum(dat1$n)-dat1$n
  dat1$ypos=dat1$ymin+dat1$n/2
  dat1$ratio=dat1$n*100/sum(dat1$n)
  dat1$cumratio=dat1$ypos*100/sum(dat1$n)
  dat1$hjust=ifelse((dat1$cumratio>25 & dat1$cumratio<75),0,1)
  
  
  mainCol=rainbow(nrow(dat1))
  p<-ggplot(dat1) + 
    geom_rect(aes( ymax=ymax, ymin=ymin, xmax=4,xmin=3),fill=mainCol,
              colour="white",alpha=0.7)+ 
    coord_polar(theta="y",start=3*pi/2)+
    xlim(0,4+labelposition)+
    theme_clean()
  
  label=dat1[[donuts]]
  if(showRatio) 
    label=paste0(label,"\n(",round(dat1$ratio,1),"%)")
  
  if(labelposition==1) {
    p<- p+ geom_text(aes(label=label,x=4.3,y=ypos,hjust=hjust),size=3)+
      geom_segment(aes(x=4,xend=4.2,y=ypos,yend=ypos))      
  }  else{
    p<- p+ geom_text(aes(label=label,x=3.5,y=ypos),size=3)
  }      
  
  p
  
}


# ggDonut 함수는, 기본적으로 ggiraphExtra에 있지만, 그거 안쓴거임.;;
# ggDonut(data %>% filter(cat == 'EN'),aes(donuts=k,count=line))
# 이 함수가 동작을 안해서;;;;

ggDonut(data %>% filter(cat == 'EN'),"k","line")
ggDonut(data %>% filter(cat == 'EN'),"k","line",labelposition=0)



## 기본형

k = c('15-20', '21-29', '30-39','40-49', '50+')
tot = c(3,36,41,5,2)
EN = c(2,21,15,1,2)
KR = c(1,15,26,4,0)
data = data.frame(k,tot,EN,KR)

a = ggplot(data, aes (x="", y = tot, fill = factor(k))) + 
  geom_col(position = 'stack', width = 1) +
  geom_text(aes(label = paste(round(tot / sum(tot) * 100, 0), "%"), x = 1.3),
            position = position_stack(vjust = 0.5), size=3) +
  theme_classic() +
  theme(plot.title = element_text(hjust=0.5),
        axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank()) +
  labs(fill = "Category",
       x = NULL,
       y = NULL,
       title = "All Age",
       size=3) + 
  coord_polar("y")



#%%
# 글자에 색상 할당 그래프.
library('tidyverse')
library('glue')
library('ggtext')

tribble(
  ~player, ~team,  ~avg,  ~code,
  "최형우", "KIA", 0.354, 72443,
  "손아섭",  "롯데", 0.352, 77532,
  "로하스",  "KT", 0.349, 67025,
  "박민우",  "NC", 0.345, 62907,
  "페르난데스",  "두산",  0.34, 69209,
  "이정후",  "키움", 0.333, 67341,
  "허경민",  "두산", 0.332, 79240,
  "김현수",  "LG", 0.331, 76290,
  "강백호",  "KT",  0.33, 68050,
  "양의지",  "NC", 0.328, 76232,
  "나성범",  "NC", 0.324, 62947,
  "황재균",  "KT", 0.312, 76313,
  "김동엽",  "삼성", 0.312, 66838,
  "오재일",  "두산", 0.312, 75334,
  "구자욱",  "삼성", 0.307, 62404,
  "최주환",  "두산", 0.306, 76267,
  "터커", "KIA", 0.306, 69652,
  "박석민",  "NC", 0.306, 74465,
  "이명기",  "NC", 0.306, 76849,
  "김하성",  "키움", 0.306, 64300
) -> avg


tribble(
  ~team, ~color,
  '두산', '#131230',
  '롯데', '#002955',
  '삼성', '#074ca1',
  '키움', '#7c0022',
  '한화', '#ff6600',
  'KIA', '#c70125',
  'KT', '#000000',
  'LG', '#c30452',
  'NC', '#315288',
  'SK', '#ff0000') -> kbo_palette

avg %>% left_join(kbo_palette)

# 플롯팅.
avg %>% left_join(kbo_palette) %>% ggplot(aes(x = player %>% fct_reorder(avg), y = avg, fill = color)) + geom_col() + coord_flip() + scale_fill_identity()

# 글자에 색깔넣고 플로팅.
avg %>% 
  left_join(kbo_palette) %>% 
  mutate(labels = glue("<span style='color:{color}'>{player}</span>"))

avg %>% 
  left_join(kbo_palette) %>% 
  mutate(labels = glue("<span style='color:{color}'>{player}</span>")) %>% 
  ggplot(aes(x = labels %>% fct_reorder(avg),
             y = avg,
             fill = color,
             color = color)) +
  geom_col() +
  coord_flip() +
  scale_fill_identity() +
  scale_color_identity() +
  theme(axis.text.y = element_markdown())

# html이용 이미지 까지 추가가능.
avg %>% 
  left_join(kbo_palette) %>% 
  mutate(labels = glue("<span style='color: {color};'>{player} </span><img src='https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/person/middle/2020/{code}.jpg' width='20'>")) %>% 
  ggplot(aes(x = labels %>% fct_reorder(avg),
             y = avg,
             fill = color,
             color = color)) +
  geom_col() +
  coord_flip() +
  scale_fill_identity() +
  scale_color_identity() +
  theme(axis.text.y = element_markdown())



#%%
# 라인플롯 누적 + tidyverse

k = c(rep('all',4),rep('EU',4),rep('KR',4))
tot = c(4.15,3.68,4.06,3.45,4.56,3.51,4.24,3.90,3.74,3.85,3.87,3.00)
group = rep(c('커스터 마이징에 많은 시간을 할애', '희소한 치장 아이템을 가지는것은 중요',
              '빠른 액션(1점) vs. 깊은 전략(6점)','다수의 유닛 부대 조작(1점) vs. 디테일한 유닛 조작(6점)'),3)
data = data.frame(k,tot,group)

a = ggplot(data, aes(k, tot, fill=group))+
  geom_bar(stat='identity', position = 'dodge', color = 'white') + theme_classic() +
  theme(plot.title = element_text(hjust=0.5),
        axis.ticks = element_blank(),
        axis.text.x = element_text(angle=60, hjust=1)) + 
  geom_text(aes(label=tot), position=position_dodge(width=0.9), size=3) + 
  labs(fill = "Category",
       x = NULL,
       y = NULL,
       size=3) + 
  coord_flip()

a + a + a  + plot_layout(guides = 'collect') 
# + ggsave("212121 figure_dpi1000.png", dpi=1000, dev='png', height=3, width=9, units="in")

