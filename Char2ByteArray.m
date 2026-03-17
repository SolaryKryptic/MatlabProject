function binary = Char2ByteArray(char)
% this function converts an ASCII character into its corresponding binary
% array
% inputs:
% char - character
% outputs:
% binary - corresponding 8 element 1d array
% Author: Ayush Datta
converted = double(char);
binary = uint8(zeros(1,8));
intermediate = converted; % create a temporary variable that will change every iteration
for i = 1:8
    binary(i) = mod(intermediate,2);
    intermediate = floor(intermediate / 2);
end
binary = fliplr(binary);
end
