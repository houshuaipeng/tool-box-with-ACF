detector = load('G:\代码\toolbox-master-行人检测\detector\models\AcfCaltech+Detector.mat');
detector = detector.detector;
filename='G:\代码\set01-行人检测视频\V001.mp4';
video=VideoReader(filename);
numframes=video.NumberOfFrames;
for k=1:numframes
    frame=read(video,k);
    bbs=acfDetect(frame,detector); 
    figure(1); im (frame);%输出原图
    for i=1:size(bbs,1)
        if bbs(i,5)>30
            bbApply('draw',bbs); %在原图上画矩形框,bb即 bounding boxes，边界框
        end
    end
end