detector = load('G:\����\toolbox-master-���˼��\detector\models\AcfCaltech+Detector.mat');
detector = detector.detector;
I=imread('1.jpg'); 
%I=imread('models/1.jpg'); %���Լ��������ļ����µ�ͼƬ
tic, bbs=acfDetect(I,detector); toc %tic��toc��������м������������ʱ�� 
figure(1); im (I);%���ԭͼ
bbApply('draw',bbs); %��ԭͼ�ϻ����ο�,bb�� bounding boxes���߽��
pause();