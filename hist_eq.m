function hist_eq(picpath)    
    %ֱ��ͼ���⻯  
    I = imread(picpath);  
    [height,width] = size(I);  
    figure  
    subplot(221)  
    imshow(I)
    subplot(222)  
    imhist(I) 

    NumPixel = zeros(1,256);  
    for i = 1:height  
        for j = 1: width  
            NumPixel(I(i,j) + 1) = NumPixel(I(i,j) + 1) + 1;  
        end  
    end  
    ProbPixel = zeros(1,256);  
    for i = 1:256  
        ProbPixel(i) = NumPixel(i) / (height * width * 1.0);  
    end  
    %�����ۼ�ֱ��ͼ 
    CumuPixel = zeros(1,256);  
    for i = 1:256  
        if i == 1  
            CumuPixel(i) = ProbPixel(i);  
        else  
            CumuPixel(i) = CumuPixel(i - 1) + ProbPixel(i);  
        end  
    end  
    CumuPixel = uint8(255 .* CumuPixel + 0.5);  
    for i = 1:height  
        for j = 1: width  
            I(i,j) = CumuPixel(I(i,j)+1);  
        end  
    end  
      
    subplot(223)  
    imshow(I)%��ʾԭʼͼ��  
    subplot(224)  
    imhist(I)%��ʾԭʼͼ��ֱ��ͼ  
end