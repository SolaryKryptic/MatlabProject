function message = AcrosticMessage(input)
% this function extracts a message hidden within lines of text
% inputs:
% input - 1d string array 
% outputs:
% message - hidden message from first letter of second word of every line
% Author: Ayush Datta
message = ''; % preallocate
for i = 1:length(input)
    c = FirstLetterSecondWord(input{i});
    message = [message, c]; % Append the extracted letter to the message
end