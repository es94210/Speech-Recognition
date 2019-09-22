Fs = 44100;

[y,Fs]=audioread('Sentence.wav');
sound(y,Fs);
disp('What would you like to order?');
myrecobj = audiorecorder(Fs,16,1);

% Record Data here
disp('press any key to start recording');
pause;
record(myrecobj);
% recordblocking(myrecobj,2);
disp('press any key to stop recording');
pause;
stop(myrecobj);
disp('End');
% End Data recording

xin = getaudiodata(myrecobj);

[s1,Fs]=audioread('Pizza.wav');
[s2,Fs]=audioread('Hamburger.wav');
[s3,Fs]=audioread('Cookies.wav');
[s4,Fs]=audioread('Fish.wav');
[s5,Fs]=audioread('Special.wav');

[s6,Fs]=audioread('PizzaRes.wav');
[s7,Fs]=audioread('HamburgerRes.wav');
[s8,Fs]=audioread('CookiesRes.wav');
[s9,Fs]=audioread('teriyakiRes.wav');
[s10,Fs]=audioread('SpecialRes.wav');


r1 = xcorr(xin,s1);
r2 = xcorr(xin,s2);
r3 = xcorr(xin,s3);
r4 = xcorr(xin,s4);
r5 = xcorr(xin,s5);

M1 = max(r1);
M2 = max(r2);
M3 = max(r3);
M4 = max(r4);
M5 = max(r5);

A = [M1 M2 M3 M4 M5];

[~, Index] = max(A);

switch Index
    case 1
        sound(s6, Fs);
    case 2
        sound(s7, Fs);
    case 3
        sound(s8, Fs);
    case 4
        sound(s9, Fs);
    case 5
        sound(s10, Fs);
end
