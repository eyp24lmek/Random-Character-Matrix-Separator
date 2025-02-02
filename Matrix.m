%Eyup SUCU 24lmek029 && Omer Mahmut AYDIN 24lele041
clear all
close all
clc

% Define the alphabet as a cell array of strings
alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};

% Initialize a 6x6 array for the initial matrix
matrix = strings(6,6);

% Fill each element of the 6x6 matrix with a random letter or number
for k = 1:1:6 % Loop for rows by counting 1 to 6
    for l = 1:1:6 % Loop for columns by counting 1 to 6
        % Randomly decide whether to select a letter or a number
        a = (-1)^floor(rand * 10); % Randomly choose +1 or -1
        if a == 1 % If 1, assign a random letter to the matrix
            % Generate a random letter
            letter = alphabet{randi([1, 26])};  % Randomly pick a letter
            matrix{k,l} = letter;               % Assign the letter to the matrix
        else
            % Generate a random one-digit number as a string
            number = num2str(floor(rand * 10)); % Convert number to a string
            matrix{k,l} = number;               % Assign the number string
        end
    end
end

% Display the original 6x6 matrix
disp('Original Matrix:'); % Name of matrix
disp(matrix);

% Count the numbers and letters in the matrix
numCount = 0;  % Counter for number strings
letterCount = 0;% Counter for letter strings
for k = 1:1:6 %Rows
    for l = 1:1:6 %Columns
        currentElement = matrix{k, l};
        if all(currentElement >= '0' & currentElement <= '9')
            numCount = numCount + 1; % Increment the number counter
        elseif all((currentElement >= 'a' & currentElement <= 'z'))
            letterCount = letterCount + 1;   % Increment the letter counter
        end
    end
end

% Calculate the required dimensions for square matrices
numSide = floor(sqrt(numCount)) + (mod(numCount, floor(sqrt(numCount))) > 0);%In numSide and letterSide calculations, the floor function is used to round down.
letterSide = floor(sqrt(letterCount)) + (mod(letterCount, floor(sqrt(letterCount))) > 0);%The mod function checks if the square root is an integer

% Initialize square matrices for numbers and letters
numMatrix = strings(numSide, numSide); %This matrix contains an array of dimensions numSide x numSide
letterMatrix = strings(letterSide, letterSide);%This matrix contains an array of dimensions letterMatrix x letterMatrix

% Initialize indices to fill the matrices
numIndex = 1;
letterIndex = 1;

% Separate and fill number and letter matrices directly
for k = 1:1:6 % filling the rows 1 to 6 
    for l = 1:1:6 %filling the columns 1 to 6
        currentElement = matrix{k, l};

        if all(currentElement >= '0' & currentElement <= '9') %Checks the numbers 0 to 9 (seperate)
            % Place in the number matrix
            numMatrix(ceil(numIndex / numSide), mod(numIndex - 1, numSide) + 1) = currentElement; %Assigns the currentElement value to the corresponding row and column of the numMatrix matrix
            numIndex = numIndex + 1; % Increment the number index
        elseif all(currentElement >= 'a' & currentElement <= 'z') %Checks letters from a to z
            % Place in the letter matrix
            letterMatrix(ceil(letterIndex / letterSide), mod(letterIndex - 1, letterSide) + 1) = currentElement;%Assigns the currentElement value to the corresponding row and column of the letterMatrix matrix
            letterIndex = letterIndex + 1; % Increment the letter index
        end
    end
end

% Display the final matrices
disp('Matrix of Number Strings:');% Name of Matrix(number)
disp(numMatrix);

disp('Matrix of Letter Strings:');%Name of Matrix(letter)
disp(letterMatrix);