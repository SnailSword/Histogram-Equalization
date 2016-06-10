function guidinghua(picpath)    
    %直方图规定化  
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
    %计算累计直方图 
    CumuPixel = zeros(1,256);  
    for i = 1:256  
        if i == 1  
            CumuPixel(i) = ProbPixel(i);  
        else  
            CumuPixel(i) = CumuPixel(i - 1) + ProbPixel(i);  
        end  
    end  
    
    %下面规定映射
    for i = 1:256
        if i <200
           CumuPixel(i) = uint8(11*255/40 * CumuPixel(i));
        else
           CumuPixel(i) = uint8(40*255/11 * CumuPixel(i) - 8000/11); 
        end
    end
    %CumuPixel = uint8(255 * CumuPixel);
    for i = 1:height  
        for j = 1: width  
            I(i,j) = CumuPixel(I(i,j)+1);  
        end  
    end  
      
    subplot(223)  
    imshow(I)
    subplot(224)  
    imhist(I) 
end