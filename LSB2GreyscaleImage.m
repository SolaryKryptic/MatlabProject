function grey = LSB2GreyscaleImage(input)
[m,n,~] = size(input);
grey = zeros (m,n,'uint8');
for i = 1:m
    for j = 1:n
        left = input(i,j,1);
        middle = input(i,j,2);
        right = input(i,j,3);
        number = (left*4)+ (middle*2) + (right*1);
        g = 16 + (32*number);
        grey(i,j) = uint8(g);
    end
end
