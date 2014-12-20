function [C, sigma] = calculateBestCAndSigma(X, y, Xval, yval)

C_vector     = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
sigma_vector = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

C = 0;
sigma = 0;

for c = 1:length(C_vector)
    for s = 1:length(sigma_vector)
        
    end
end

end
