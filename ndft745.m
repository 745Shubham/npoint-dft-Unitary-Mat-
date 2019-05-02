function ndft745 = ndft745(x,N)
%gives Unitary N-point DFT
zo= size(x); 
if(zo<N)
    N= zo;
    
end
omega= 1/exp(pi*2i/N);
    for i =1 : N
   
        for  j =1 : N 
  tm(i,j)=  omega^((i-1)*(j-1));

    end
        end
W=sqrt(1/N)*tm; % remove square root term for norm dft
oj= W(1:N,1:N)*x(1:N)';
ndft745= oj';
end

