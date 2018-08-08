detector = load('G:\代码\toolbox-master-行人检测\detector\models\AcfCaltech+Detector.mat');
detector = detector.detector;
I=imread('1.jpg'); 
%I=imread('models/1.jpg'); %可以加载其他文件夹下的图片
tic, bbs=acfDetect(I,detector); toc %tic和toc用来检测中间语句运行所需时间 
figure(1); im (I);%输出原图
bbApply('draw',bbs); %在原图上画矩形框,bb即 bounding boxes，边界框
pause();