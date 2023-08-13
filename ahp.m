function [y] = ahp()
% criteria = input('enter the number of criteria');

global criteria
for i = 1:criteria
    for j = 1:criteria
       
        if i==j
            comparisonmatrix(i,j) = 1;
        elseif i<j
            comparisonmatrix(i,j) = input(sprintf('enter the importance of %d criterion w.r.t %d criterion', i, j));
        else
            comparisonmatrix(i,j) = 1/comparisonmatrix(j, i);
        end
        
    end
end

productmatrix = nthroot(prod(comparisonmatrix, 2), criteria);
sumvalue = sum(productmatrix);
y = (productmatrix./repmat(sumvalue, criteria, 1))';
end