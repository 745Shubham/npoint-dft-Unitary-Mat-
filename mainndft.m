clear all;
clc
n= 0:0.1:100;
x= sin(2*pi*n);
k1=ndft745(x,4); % 4 point unitary dft
% check comments in ndft745.m for normal dft
io= input("Enter value of n ")
k2= ndft745(x,io);
plot(n(1:io), k2)
