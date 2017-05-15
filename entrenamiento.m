function [Wnovo,b] = entrenamiento(X,T,W,b,alpha=0.01,iteraciones =10)
[n,m]= size(X);
i=1;
while (i<=iteraciones)
%mostrando la iteraciones-----
%disp(sprintf('Iteracion -> %d \n',i));
%-----------------------------
  for j=1:n
    %mostrando pareja S:T----------
    %disp(sprintf('Pareja S:T -> %d \n',j));
    %-------------------------
    Yin = y_in(X(j,:),W,b); 
    %mostrando Yin-------------------
    %disp(sprintf('Y_in -> %f \n',Yin));
    %--------------------------------
    Y = funcionAct(Yin,0); %theta = 0;
    %Mostrando Y-----------------------
    %disp(sprintf('Y -> %f \n',Y));
    %----------------------------------
    if(Y ~= T(j))
      for k = 1:m
        W(k) = W(k)+ alpha*T(j)*X(j,k);
      endfor;
      %mostrando W---------------------
      %disp('Mostrando W: ')
      %disp(W);
      %--------------------------------
      b = b + alpha*T(j);
      %mostrando bias------------------
      %disp('Mostrando b: ')
      %disp(b);
      %--------------------------------
    endif;
  endfor;
i=i+1;
endwhile;
Wnovo = W;