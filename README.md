# Homework 5
数字图像处理课程作业实验五

频域滤波器

## Author
王适未 自动化钱61 2160405015

## Exp. tasks
实验任务

1. 频域低通滤波器：设计低通滤波器包括 butterworth and Gaussian (选择合适的半径，计算功率谱比),平滑测试图像test1和2;分析各自优缺点；
2. 频域高通滤波器：设计高通滤波器包括butterworth and Gaussian，在频域增强边缘。选择半径和计算功率谱比，测试图像test3,4：分析各自优缺点；
3. 其他高通滤波器：拉普拉斯和Unmask，对测试图像test3,4滤波；分析各自优缺点。

比较并讨论空域低通高通滤波（Project3）与频域低通和高通的关系；按标准格式提交报告。 

## File structures
文件结构说明

```
dist/
    hw5.md
    hw5-1.png
    hw5-2.png
    hw5-3.png
src/
    pic/
        test1.pgm
        test2.tif
        test3_corrupt.pgm
        test4 copy.bmp
        test4.tif
    hw5.m
.gitignore
README.md
hw5.md
hw5.txt
```

- The `dist/` directory contains all complied reports and pictures.
- The `src/` directory contains all source code and source pictures.
- The `hw5.md` file is the homework 5 report file, same as `dist/hw5.md`.
- The `hw5.txt` file is the homework 5 code file, same as `src/hw5.m`.
