function sortedArray = bubbleSort(array)
    n = length(array); % Get the length of the array
    for i = 1:n-1
        for j = 1:n-i
            if array(j) > array(j+1)
                % Swap elements
                temp = array(j);
                array(j) = array(j+1);
                array(j+1) = temp;
            end
        end
    end
    sortedArray = array; % Return the sorted array
end
