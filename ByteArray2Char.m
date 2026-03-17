function character = ByteArray2Char(input)
doubled = double(input);
powers = [128,64,32,16,8,4,2,1];
dec = sum(powers .* doubled);
character = char(dec);
end