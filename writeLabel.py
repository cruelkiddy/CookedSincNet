import numpy as np

'''

@brief: A script to add labels, gdx's label is 1; wcy's label is 2; xfy's label is 3

@Author: Dongxu Guo
@Date: 16:46 12/16/2019

'''


Label = dict()

print(type(Label))

f = open("data_lists/TIMIT_all.scp")             # 返回一个文件对象
line = f.readline()             # 调用文件的 readline()方法
Label['gdx/gdx1.wav'] = 1
while line:
    line = f.readline()
    if line[0:3] == "gdx":
        Label[line.strip('\n')] = 1
    elif line[0:3] == "wcy":
        Label[line.strip('\n')] = 2
    elif line[0:3] == "xfy":
        Label[line.strip('\n')] = 3
    elif line[0:2] == "zr":
        Label[line.strip('\n')] = 0

f.close()

print(Label)

np.save('TIMIT_labels', Label)

