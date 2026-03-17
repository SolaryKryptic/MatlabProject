function character = FirstLetterSecondWord(input)
% this function extracts the first letter of the second word
% inputs:
% input - character vector
% outputs: 
% character - 
% Author: Ayush Datta
words = strsplit(input);
if length(words) < 2 % if only one word
    character = ' ';
    else
    character = words{2}(1);
end
