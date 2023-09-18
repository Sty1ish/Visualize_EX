#%%
# 요청 처리 > 준호님
import os 
import pandas as pd
import numpy as np 


os.chdir(r'C:\Users\stylish1379_2bytesco\Desktop\준호님 요청 처리')

#%%
down_data = pd.read_csv('Total_Download.csv')
rev_data = pd.read_csv('Total_Rev.csv')


#%%
# 22년 01월 이전 가르기 > 21년 12월까지 가져오기.
down_df = pd.concat([down_data.iloc[:,:2], down_data.iloc[:,25:]], axis = 1)
rev_df = pd.concat([rev_data.iloc[:,:2], rev_data.iloc[:,25:]], axis = 1)

# 해당 정보만 쓴다.
down_df = down_df.dropna()
rev_df = rev_df.dropna()


#%%
# 연산할때 0으로 나누면 안되기 때문에 1e-9로 변경한 결과, 가끔 -1 ~ 1 초과하는 값이 등장한다. 해당 값 분석시 제거 필요. > 이러지 말고, 오류낸 다음 지우자.
down_pct_df = down_df.copy()
col_name_temp = down_df.columns[2]

for col_name in down_df.columns[2:]:
    if col_name == col_name_temp:
        down_pct_df[col_name] = 0
    down_pct_df[col_name] = (down_df[col_name] - down_df[col_name_temp]) / down_df[col_name_temp]
    col_name_temp = col_name


# 연산할때 0으로 나누면 안되기 때문에 1e-9로 변경한 결과, 가끔 -1 ~ 1 초과하는 값이 등장한다. 해당 값 분석시 제거 필요.
rev_pct_df = rev_df.copy()
col_name_temp = rev_df.columns[2]

for col_name in rev_df.columns[2:]:
    if col_name == col_name_temp:
        rev_pct_df[col_name] = 0
    rev_pct_df[col_name] = (rev_df[col_name] - rev_df[col_name_temp]) / rev_df[col_name_temp]
    col_name_temp = col_name

# 0으로 나누어서 생기는 문제인 np.inf값 결측으로 변경.
down_pct_df = down_pct_df.replace(np.inf, np.nan)
rev_pct_df = rev_pct_df.replace(np.inf, np.nan)

# 결측. 오류값 na열 제거 > 여기서 부터, down과 rev는 서로 길이가 다르게 됨.
down_pct_df = down_pct_df.dropna()
rev_pct_df = rev_pct_df.dropna()

# 첫열은 필요 없는값. 분석에 안들어감. (연산에만 필요.)
down_pct_df = down_pct_df.drop(down_df.columns[2], axis = 1)
rev_pct_df = rev_pct_df.drop(rev_df.columns[2], axis = 1)


#%%
# 분석 1열
# 분석 2열
full_data_df = pd.merge(rev_pct_df, down_pct_df, how = 'inner', on = ['UID','Name'], suffixes=['_Rev','_Down'])
rev_col = [i for i in full_data_df.columns if i.endswith('Rev')]
down_col = [i for i in full_data_df.columns if i.endswith('Down')]

# 인덱싱으로 찾자. rev_downcol의 날짜는 같다.
date_idx = 0

labels = full_data_df.iloc[:,1]
y_data = full_data_df.loc[:,rev_col[date_idx]]
x_data = full_data_df.loc[:,down_col[date_idx]]




# 3d plotting 먼저 해보자. 이형태가 맞나 모르겠음.
# 세로로 쌓아진 데이터 프레임 제작
df_3d = []
for time, (col1, col2) in enumerate(zip(rev_col, down_col)):
    # col1은 Rev col이니까. 년도만 뗀다 / 1만 리턴되는 리스트임.
    labels = full_data_df.iloc[:,1]
    date_col = pd.Series([col1.split('_Rev')[0]] * len(full_data_df), name = 'Date')
    time_col = pd.Series([time] * len(full_data_df), name = 'T')
    temp_df = pd.concat([labels, date_col, time_col, full_data_df[col1], full_data_df[col2]], axis = 1)
    temp_df.columns = ['Label','Date','T','Rev','Down']
    df_3d.append(temp_df)

df_3d = pd.concat(df_3d, axis = 0)
    

# 게임 N개 선정
game_names = df_3d.Label.unique()
game_num = 40
condition = ''
for idx, number in enumerate(range(game_num)):
    if idx != 0:
        condition = condition + '|'
    condition = condition + f"(df_3d['Label'] == game_names[{number}])"

df = df_3d[eval(condition)]

#%%
# 플롯팅 형태 질문

import plotly.io as pio
import plotly.express as px
pio.renderers.default='browser'
fig = px.scatter_3d(df, x='T', y='Rev', z='Down', color='Label')
fig.update_traces(marker_size = 4)
fig.show()

# 일단 이 형태가 맞는지 우선 질문 (준호님)
# 이게 맞으면, gamename의 매개변수를 삼아 https://plotly.com/python/3d-scatter-plots/ 사이트의 3d scatter plots in Dash 형태로 개발하면 찾기 편함.



import plotly.express as px
pio.renderers.default='browser'
fig = px.scatter_matrix(df,
    dimensions=["T", "Rev", "Down"],
    color="Label")
fig.update_traces(diagonal_visible=False)
fig.update_traces(marker_size = 4)
fig.show()

