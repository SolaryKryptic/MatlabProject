function asnwer = ExtractHiddenText(input,n)
doubled = double(input);
vector = zeros(1,n);
for i = 1:n
    LSB = ExtractHiddenByte(doubled,i);
    vector(i) = ByteArray2Char(LSB);
end
asnwer = char(vector);