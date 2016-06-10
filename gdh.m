function gdh( pn ,pm)
I=imread(pn);
J=histeq(I,32);
[counts,x]=imhist(J);
Q=imread(pm);
figure;imshow(Q);
title('原图像');

figure;imhist(Q);
title('原图像直方图');
M=histeq(Q,counts);
figure;imshow(M);
title('直方图规定化后的图像');
figure;imhist(M);
title('规定直方图');
end

