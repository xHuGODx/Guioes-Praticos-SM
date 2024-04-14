function [NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
N = length(f);
NumBits = 0;
for n=1:N
    NumBits = NumBits + sum(Mesg == n)*nBits(n);
end

NumBPS = NumBits / CompNesg;    