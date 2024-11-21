function resultMatrix = countUniqueElements(array)
    uniqueElements = unique(array);
    resultMatrix = zeros(length(uniqueElements), 2);
    for i = 1:length(uniqueElements)
        
        resultMatrix(i, 1) = uniqueElements(i);
        resultMatrix(i, 2) = sum(array == uniqueElements(i));
    end
end
 