%%%% MEROS 3o %%%%

fm3=imread('cameraman.tif');

fun=@dct2;

f8=blockproc(fm3,[8 8],fun);

colormap(gray);

f8(abs(f8)<5)=0;

s=nnz(~f8);

fun=@idct2;

fi22=blockproc(f8,[8 8],fun);        

fif8=uint8(fi22);

imagesc(fif8);

peak=psnr(fm3,fif8);

printf("\nThe Peak-SNR value is %0.4f \n", peak);

printf("\nThe number of zero coeffieients are %d \n", s);

