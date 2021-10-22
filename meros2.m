%%%% MEROS 2o %%%%

f=imread('cameraman.tif');

colormap(gray);

f2=dct2(f);

f2(abs(f2)<5)=0;

s=nnz(~f2);

fi2=idct2(f2);

fi=uint8(fi2);

imagesc(fi);

peak=psnr(f,fi);

printf("\nThe Peak-SNR value is %0.4f \n", peak);

printf("\nThe number of zero coeffieients are %d \n", s);
