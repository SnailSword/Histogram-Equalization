function gdh( pn ,pm)
I=imread(pn);
J=histeq(I,32);
[counts,x]=imhist(J);
Q=imread(pm);
figure;imshow(Q);
title('ԭͼ��');

figure;imhist(Q);
title('ԭͼ��ֱ��ͼ');
M=histeq(Q,counts);
figure;imshow(M);
title('ֱ��ͼ�涨�����ͼ��');
figure;imhist(M);
title('�涨ֱ��ͼ');
end

