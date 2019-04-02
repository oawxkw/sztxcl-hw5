# 数字图像处理课程作业实验五 频域滤波器

**姓名：王适未**

**班级：自动化钱61**

**学号：2160405015**

**提交日期：2019年4月2日**

 

## 摘要

本次作业主要实现频域滤波器的基本应用，本文通过 MATLAB 实现了图像在频域上的低通滤波以及高通滤波两大方面内容，本文参考相关数目编写了巴特沃斯滤波器、高斯滤波器、拉普拉斯滤波器以及 Unmask 滤波器，分别对给定图像进行测试并对测试结果进行分析。最后比较并讨论了空域滤波器与频域滤波器二者之间的关系。

 

## 作业实验任务 

### 一、频域低通滤波器

**任务要求：**设计低通滤波器包括 Butterworth and Gaussian (选择合适的半径，计算功率谱比), 平滑测试图像 test1, 2 ;分析各自优缺点；

**1. Butterworth Lowpass Filter**

截止频率位于距原点 D0 处的 n 阶 BLPF 的传递函数为

<div align=center><img src="https://latex.codecogs.com/gif.latex?Mask_{median}=\frac{1}{9}\left(\begin{matrix}1&1&1\\1&1&1\\1&1&1\end{matrix}\right)" alt="Mask_{median}=\frac{1}{9}\left(\begin{matrix}1&1&1\\1&1&1\\1&1&1\end{matrix}\right)"/></div>

**2. Gaussian Lowpass Filter**

 

### 二、频域高通滤波器

设计高通滤波器包括 Butterworth and Gaussian, 在频域增强边缘。选择半径和计算功率谱比，测试图像 test3, 4: 分析各自优缺点；

 

### 三、其他高通滤波器

拉普拉斯和 Unmask, 对测试图像 test3, 4 滤波；分析各自优缺点。

 

### 四、频域空域滤波器对比

比较并讨论空域低通高通滤波 (Project3) 与频域低通和高通的关系。

 

## 附录

代码详见文件

 

## 参考文献

[1] 冈萨雷斯, 数字图像处理（第三版）, 电子工业出版社