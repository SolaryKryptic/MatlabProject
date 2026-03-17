function output = ExtractHiddenByte(input,position)
output = zeros(1,8,'uint8');
for i = (position-1)*8+1:position*8
    output(i-((position-1)*8)) = mod(input(i),2);
end
