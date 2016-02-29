% ECOR2606 - Lab 6

function [] = lab6()
A = [ 2  -14  5
      5   6  -2
      1   5   3 ];
  
b = [ 52; 2; 17 ];

x1 = inv(A) * b

x2 = A^-1 * b

x3 = A\b

end

function [x] = findAllX (Y)
A = [ 5-Y  -4   4
      -5  4+Y   3
       5    3  1+Y ];

b = [ 1; 4; -2 ];

x = A\b;

end

function [x1] = findX1 (Y)

end

