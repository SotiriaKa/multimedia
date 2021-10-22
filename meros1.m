%%%% MEROS 1o %%%%

f=rand(1,8);

f2=rand(8);

% 1. %
function ff = mydct(f)
  
  u=1;
  
  N=8;
  
  ff=zeros(1,8);

  g1=f(:,1:N);  
  
  g2=f(:,N:-1:1); %για ολες τις Ν στηλες του f με βημα -1 για να πετυχουμε τον αντικατοπτρισμο
  
  gg=[g1 g2]; 
  
  g2=fft(gg);
  
  for(u=1:N)
    u=u-1;
    if(u==0)
      w=1/sqrt(N);
    else
      w=sqrt(2)/sqrt(N);
    endif
    ff=(w*(exp((1j*(-pi))/(2*N)))*g2)/2;
  endfor
  
endfunction


% 2. %
function ff2 = mydct2(f2)
  
  ff2=zeros(8);
  
  for(i=1:8)
    ff2(i,:)=mydct(f2(i,:));
  endfor
    
endfunction

mf2=mydct2(f2);

ff22=dct2(f2); 

