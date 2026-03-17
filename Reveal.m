% The Reveal script will reveal three different hidden messages by
% extracting them from the files they are hidden within.
%
% Note that the script calls a number of functions you are expected to
% write and that the script will not extract the hidden message(s) until
% the relevant functions have been written
% 
% Author: Peter Bier

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part 1: Text hidden in an audio signal
% Requires that you implement ExtractHiddenText (which is likely to call
% your ExtractHiddenByte and ByteArray2Char functions)

load("audio.mat");  % load the audio signal from the supplied file
% this will load in a sigal (y) and the sample frequency (Fs).

% play the audio signal, requires speakers or headphones to hear
% (comment out the sound line if you don't want to hear it)
sound(y, Fs); 

% convert the amplitude of the audio signal into an array of integers by
% performing appropriate scaling and rounding.
audio = round(y*1000000);

% The hidden message is 143 characters in length, extract and display it
message = ExtractHiddenText(audio,143);
disp("First hidden message:");
disp(message);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part 2: Greyscale image hidden in a colour image
% Requires that you implement ExtractImageLSB and LSB2GreyscaleImage.

% extract the image hidden within a colour image and display it

RGBImage = imread("mystery.png");
LSB = ExtractImageLSB(RGBImage);
greyImage = LSB2GreyscaleImage(LSB);

% display the original image and hidden image side by siden
figure(1)
subplot(1,2,1);
imshow(RGBImage);
title("Original image")
subplot(1,2,2);
imshow(greyImage);
title("Second hidden message")


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part 3: Acrostic Text
% Requires that you implement AcrosticMessage which is likely to call 
% FirstLetterSecondWord (which you will also write)

% read the poem lines into a string array and find the hidden message 
% by extracting the first letter of every second word in each line

lines = readlines("poem.txt"); % an AI generated poem (which explains the quality!)

acrostic = AcrosticMessage(lines);

disp("Third hidden message:");
disp(acrostic);



