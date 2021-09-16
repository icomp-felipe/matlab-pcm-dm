clc;
clear all;
close all;
a=2;


f=1;
t=(0:1/(f*65):1);
x=a*sin(2*pi*f*t);

l=length(x);
plot(x,'color', 'black');
delta=0.2;
hold on
xn=0;
for i=1:l;
    if x(i)>xn(i)
        d(i)=1;
        xn(i+1)=xn(i)+delta;
    else
        d(i)=0;
        xn(i+1)=xn(i)-delta;
    end
end
stairs(xn,'color','red') % modulation part
hold on
for i=1:d
    if d(i)>xn(i)
        d(i)=0;
        xn(i+1)=xn(i)-delta;
   else d(i)=1;
        xn(i+1)=xn(i)+delta; %demodulation part
    end
end
plot(xn,'color','cyan');