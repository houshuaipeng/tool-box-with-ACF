detector = load('G:\����\toolbox-master-���˼��\detector\models\AcfCaltech+Detector.mat');
detector = detector.detector;
filename='G:\����\set01-���˼����Ƶ\V001.mp4';
video=VideoReader(filename);
numframes=video.NumberOfFrames;
for k=1:numframes
    frame=read(video,k);
    bbs=acfDetect(frame,detector); 
    figure(1); im (frame);%���ԭͼ
    for i=1:size(bbs,1)
        if bbs(i,5)>30
            bbApply('draw',bbs); %��ԭͼ�ϻ����ο�,bb�� bounding boxes���߽��
        end
    end
end