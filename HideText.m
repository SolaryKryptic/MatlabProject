function hidden = HideText(input,vector)
% this function hides a text message in the LSB of elements of a 1d array
% inputs:
% input - 1d array
% vector - character vecotr containing message to hide
% outputs:
% hidden - 1d array containing hidden message
hidden = input; % assign
% get binary
totalbit = [];
for i = 1:length(vector) 
   vectorbit = Char2ByteArray(vector(i));
   totalbit = [totalbit, vectorbit];
end

for i = 1:length(totalbit)
    specificbit = totalbit(i);

    if specificbit == 1
        if mod(input(i),2) == 0
            hidden(i) = input(i) + 1;
        end
    else
        if mod(input(i),2) == 1
            hidden(i) = input(i) - 1;
        end
    end
end