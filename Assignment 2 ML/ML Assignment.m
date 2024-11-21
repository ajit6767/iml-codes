% Load data from CSV
data = readtable('iphone.csv');

% Extract numeric column (ratingScore)
ratingScore = data.ratingScore;

% Min-Max scaling
minVal = min(ratingScore);
maxVal = max(ratingScore);
scaledRating = (ratingScore - minVal) / (maxVal - minVal);

% Add back the scaled rating to the original data
data.scaled_ratingScore = scaledRating;

% Save the result
writetable(data, 'scaled_iphone.csv');