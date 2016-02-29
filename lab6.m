% ECOR2606 - Lab 6

function [] = lab6()
A = [ 2  -14  5
      5   6  -2
      1   5   3 ];
  
b = [ 52; 2; 17 ];

x1 = inv(A) * b;

x2 = A^-1 * b;

x3 = A\b;

fprintf('[%5.3f %5.3f %5.3f]\n', x1);
fprintf('The value of b is %5.3f\n\n', x1(2));

fprintf('[%5.3f %5.3f %5.3f]\n', x2);
fprintf('The value of b is %5.3f\n\n', x2(2));

fprintf('[%5.3f %5.3f %5.3f]\n', x3);
fprintf('The value of b is %5.3f\n\n', x3(2));

% ii
x4 = findAllX(0);
fprintf('FindAllX: [%5.3f %5.3f %5.3f]\n\n', x4);

range = [ 0 12 ];

% iv
figure(1);
fplot(@findX1, range);

% v
figure(2);

y = 1:13;

for x = range
    y(x) = findX1(x+1);
end

plot(range, y);

% vi
x_min = fminsearch(@findX1, range);
fprintf('x_min: %5.3f\n', x_min);

end

% i
function [x] = findAllX (Y)
A = [ 5-Y  -4   4
      -5  4+Y   3
       5    3  1+Y ];

b = [ 1; 4; -2 ];

x = A\b;

end

% iii
function [x1] = findX1 (Y)
x = findAllX(Y);
x1 = x(1);

end

