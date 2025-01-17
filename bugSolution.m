function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to implicit type conversion and array indexing.
  if input > 10
    result = input^2; 
  else
    result = input * 2; 
  end
  if isvector(result) || ismatrix(result)
      result(1) = 100; % Attempt to assign value to a scalar
  end
end

% Example usage
input1 = 12; %Example 1
result1 = myFunction(input1);
input2 = 5; %Example 2
result2 = myFunction(input2);

disp(result1); %Output 100
disp(result2); %Output 100