function [H] = Entropia(Texto)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    H = 0;
    [~, Freqs] = Alfabeto2(Texto);
    Freqs = Freqs./sum(Freqs);
    for i = 1:length(Freqs)
        H = H + Freqs(i) * log2(Freqs(i));
    end
    H = -H;
end