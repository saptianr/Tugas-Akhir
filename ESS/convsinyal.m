%Program ini digunakan untuk mengkonvolusikan sinyal suara dengan impulse response
%terdapat 3 input sinyal 
clc; clear all; close all;
[y,Fs] = audioread('imp2.wav');  		%  Sinyal impulse
[y2,Fs2] = audioread('dog bark dry.wav');  %  Sinyal asli yang akan dikonvolusi
ynew1=y(:,1)'; 	%membaca kolom pertama matriks jika stereo, kalau mono tidak usah
ynew2=y2(:,1)'; %membaca kolom pertama matriks jika stereo, kalau mono tidak usah 
hasil=conv(ynew2,ynew1); %proses konvolusi
out1normalized = hasil/max(hasil); %normalisasi sinyal terkonvolusi
audiowrite('Angjing terekam.wav',out1normalized,44100) %membuat sinyal terkonvolusi menjadi wav, fs=44100