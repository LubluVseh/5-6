3.
program stepa_8_2;
var i,n,max,min,maxi,mini,kr5:integer;
    a:array [1..20] of integer;
Begin
  min:=118;
  randomize;
  for i:=1 to 20 do
    a[i]:=random(117)-52;
  for i:=1 to 20 do begin
    if a[i]>max then begin
      max:=a[i];
      maxi:=i;
      end;
    if (a[i]<min) and (a[i]>0) then begin
      min:=a[i];
      mini:=i;
    end;
    if a[i] mod 5 = 0 then
      kr5:=i;
  end;
  writeln('Максимальный элемент и его номер - ',max,' ',maxi);
  if mini = 0 then writeln('Положительных элементов в массиве нет')
  else writeln('Наименьший положительный элемент и его номер - ',min,' ',mini);
  writeln('Номер последнего элемента,кратного 5 - ',kr5);
end.

4.
program stepa_8_2;
var i,n:integer;
    a:array [1..30] of integer;
    b:array of integer;
Begin
  randomize;
  for i:=1 to 20 do begin
    a[i]:=random(166)-99;
    if a[i] mod 2 = 0 then n+=1;
    end;
  setlength(b,n);
  n:=0;
  for i:=1 to 30 do begin
    if (a[i] mod 2 = 0) and (a[i] <> 0) then begin
      b[n]:=a[i];
      n+=1;
    end;
    end;
    for i:=0 to n-1 do
      write(b[i]:5)
  end.
  
5.
program stepa_8_2;
var i,n,ni,suma,sumb:integer;
    a:array of integer;
    b:array of integer;
Begin
  writeln('Введите длину первого массива');
  readln(n);
  setlength(a,n);
  writeln('Введите элементы первого массива');
  for i:=0 to n-1 do begin
    read(a[i]);
    if a[i]>0 then suma+=a[i];
    end;
  writeln('Введите длину второго массива');
  readln(ni);
  setlength(b,ni);
  writeln('Введите элементы второго массива');
  for i:=0 to ni-1 do begin
    read(b[i]);
    if b[i]>0 then sumb+=b[i];
    end;
  if sumb>suma then begin
    for i:=0 to n-1 do 
      a[i]:=a[i]*10;
    writeln('Изменен массив №1');
    for i:=0 to n-1 do 
      write(a[i],' ');
    end;
  if suma>sumb then begin
    for i:=0 to ni-1 do 
      b[i]:=b[i]*10;
    writeln('Изменен массив №2');
    for i:=0 to ni-1 do 
    write(b[i],' ');
    end;
  if suma = sumb then writeln('Суммы равны'); 
end.
  
6.
program stepa_8_2;
var i:integer;
    a:array of integer;
function karti (a:array of integer):boolean;
var i:integer;
begin
  karti:=True;
  if length(a)>1 then begin
  for i:=0 to length(a)-2 do
    if a[i]>a[i+1] then begin
      karti:=False;
      break;
    end;
    end
    else
      karti:=True;
end;
Begin
  randomize;
  readln(i);
  setlength(a,i);
  for i:=0 to length(a)-1 do
    a[i]:=random(20);
  writeln();
  if karti(a) = False then
    writeln('Массив не упорядочен')
  else
    writeln('Массив упорядочен');
end.

7.
program stepa_8_2;
var i:integer;
    a:array of integer;
function posl (a:array of integer):integer;
var i,k,b:integer;
begin
  for i:=0 to length(a)-2 do begin
    if a[i]<=a[i+1] then
      k+=1
    else begin
      if k>=b then
        b:=k;
      k:=0;
    end;
  end;
  if k>=b then
        b:=k;
  posl:=b;
end;
Begin
  randomize;
  readln(i);
  setlength(a,i);
  for i:=0 to length(a)-1 do
    a[i]:=random(20);
  for i:=0 to length(a)-1 do
    write(a[i]:3);
  writeln();
  writeln('Максимальная длина неубывающей последовательности ', posl(a)+1);
end.

8.
program stepa_8_2;
var i:integer;
    a:array of integer;
function posl (a:array of integer):integer;
var i,k,b,n,n1:integer;
begin
  n1:=a[0];
  for i:=0 to length(a)-2 do begin
    if a[i]=a[i+1] then begin
      k:=a[i];
      b+=1;
      end
    else 
      if b>n then begin
        n:=b;
        n1:=k;
  end;
  end;
  if b>n then begin
        n:=b;
        n1:=k;
        end;
  posl:=n1;
end;
Begin
  randomize;
  readln(i);
  setlength(a,i);
  for i:=0 to length(a)-1 do
    a[i]:=random(20);
  for i:=0 to length(a)-1 do
    write(a[i]:3);
  writeln();
  writeln('Наиболее часто повторяющееся число - ', posl(a));
end.
 
9.
program stepa_8_2;
var i,min,mini:integer;
    a:array of integer;
procedure pop(var a:array of integer; i:integer);
var b:integer;
begin
  for b:=i to length(a)-2 do 
    a[b]:=a[b+1];
  setlength(a,length(a)-1);
end;
Begin
  min:=integer.MaxValue;
  randomize;
  setlength(a,20);
  for i:=0 to 19 do begin
    a[i]:=random(20);
    if a[i]<min then begin
      min:=a[i];
      mini:=i;
      end;
    write(a[i]:3);
    end; 
  writeln();
  pop(a,mini);
  for i:=0 to length(a)-1 do 
    write(a[i]:3);
  for i:=0 to length(a)-1 do 
    if a[i]>0 then begin
      mini:=i;
      break;
      end;
  pop(a,mini);
  writeln();
  for i:=0 to length(a)-1 do 
    write(a[i]:3);
end.

10.
program stepa_8_2;
var i,min,mini:integer;
    a:array of integer;
procedure pop(var a:array of integer; i:integer); //массив, позиция
var b:integer;
begin
  for b:=i to length(a)-2 do 
    a[b]:=a[b+1];
  setlength(a,length(a)-1);
end;
procedure append_arr(var a:array of integer; i:integer; d:integer); //массив, позиция, число
var b:integer;
begin
  setlength(a,length(a)+1);
  for b:=length(a)-2 downto i do 
    a[b+1]:=a[b];
  a[i]:=d;
end;
Begin
  min:=integer.MaxValue;
  randomize;
  setlength(a,20);
  for i:=0 to 19 do begin
    a[i]:=random(20)-10;
    write(a[i]:3);
    end;
    writeln();
  i:=0;
  while i<=length(a)-1 do begin
    if a[i]<0 then pop(a,i)
    else i+=1;
    end;
  for i:=0 to length(a)-1 do
    write(a[i]:3);
end.

11.
program stepa_8_2;
var i,min,mini,k:integer;
    a:array of integer;
procedure pop(var a:array of integer; i:integer); //массив, позиция
var b:integer;
begin
  for b:=i to length(a)-2 do 
    a[b]:=a[b+1];
  setlength(a,length(a)-1);
end;
procedure append_arr(var a:array of integer; i:integer; d:integer); //массив, позиция, число
var b:integer;
begin
  setlength(a,length(a)+1);
  for b:=length(a)-2 downto i do 
    a[b+1]:=a[b];
  a[i]:=d;
end;
Begin
  min:=integer.MaxValue;
  randomize;
  setlength(a,20);
  for i:=0 to 19 do begin
    a[i]:=random(20);
    if a[i] mod 2 = 0 then
      k+=1;
    write(a[i],' ');
    end;
  writeln();
  for i:=0 to length(a)-1 do
    if a[i] mod 2 = 0 then begin
    append_arr(a,i,k);
    break;
    end;
  for i:=0 to length(a)-1 do
    write(a[i],' ');
end.
 
12.
program stepa_8_2;
var i,min,mini,k:integer;
    a:array of integer;
procedure pop(var a:array of integer; i:integer); //массив, позиция
var b:integer;
begin
  for b:=i to length(a)-2 do 
    a[b]:=a[b+1];
  setlength(a,length(a)-1);
end;
procedure append_arr(var a:array of integer; i:integer; d:integer); //массив, позиция, число
var b:integer;
begin
  setlength(a,length(a)+1);
  for b:=length(a)-2 downto i do 
    a[b+1]:=a[b];
  a[i]:=d;
end;
Begin
  randomize;
  setlength(a,20);
  for i:=0 to 19 do begin
    a[i]:=random(20);
    write(a[i],' ');
    end;
  writeln();
  i:=0;
  while i<=length(a)-1 do 
    if a[i]>0 then begin
      append_arr(a,i,0);
      i+=2;
    end
    else i+=1;
 for i:=0 to length(a)-1 do
    write(a[i],' ');
end.

 
13.
program stepa_8_2;
var i,min,mini,max,maxi,b,k:integer;
    a:array of integer;
procedure pop(var a:array of integer; i:integer); //массив, позиция
var b:integer;
begin
  for b:=i to length(a)-2 do 
    a[b]:=a[b+1];
  setlength(a,length(a)-1);
end;
procedure append_arr(var a:array of integer; i:integer; d:integer); //массив, позиция, число
var b:integer;
begin
  setlength(a,length(a)+1);
  for b:=length(a)-2 downto i do 
    a[b+1]:=a[b];
  a[i]:=d;
end;
Begin
  randomize;
  setlength(a,20);
  for i:=0 to 19 do begin
    a[i]:=random(20);
    write(a[i],' ');
    end;
  max:=a[1];
  min:=integer.MaxValue;
  for i:=0 to 19 do begin
    if a[i]>max then begin
      max:=a[i];
      maxi:=i;
  end;
    if a[i]<min then begin
      min:=a[i];
      mini:=i;
    end;
    end;
  b:=a[mini];
  a[mini]:=a[maxi];
  a[maxi]:=b;
  writeln();
 for i:=0 to length(a)-1 do
    write(a[i],' ');
end.
