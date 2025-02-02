# Random-Character-Matrix-Separator
Generating and Separating Random Letters and Numbers in a Matrix
Project Overview

This MATLAB project generates a 6x6 matrix filled with random letters (a-z) and single-digit numbers (0-9). The matrix is then analyzed to separate the letters and numbers into two distinct square matrices of optimal sizes.
How It Works

    Matrix Generation:
        A 6x6 matrix is created, where each element is randomly assigned either a letter or a number.
    Counting Elements:
        The script counts the total number of letters and numbers separately.
    Determining Square Matrix Sizes:
        The minimum square matrix dimensions are calculated using the square root of each count.
    Matrix Separation:
        Letters and numbers are placed into their respective matrices while maintaining order.
    Final Display:
        The original 6x6 matrix and the two separate matrices (numbers matrix and letters matrix) are displayed.

Installation & Usage
Requirements:

    MATLAB (any version supporting strings and randi)

Run the Script:

    Open MATLAB.
    Copy and paste the script into a new .m file.
    Run the script to generate and separate the random character matrix.

Original 6x6 Matrix:
    'x'   '2'   'g'   '8'   'm'   '4'  
    '5'   'a'   '3'   't'   'z'   'y'  
    '1'   '7'   'h'   'b'   'n'   'c'  
    '6'   'o'   'p'   '9'   'e'   'f'  
    'q'   'r'   '0'   's'   'l'   'u'  
    'd'   'w'   'v'   'j'   'k'   'i'  

Numbers Matrix:
   '2'   '8'   '4'  
   '5'   '3'   '1'  
   '7'   '9'   '0'  
   '6'     

Letters Matrix:
    'x'   'g'   'm'   'a'  
    't'   'z'   'y'   'h'  
    'b'   'n'   'c'   'o'  
    'p'   'e'   'f'   'q'  
    'r'   's'   'l'   'u'  
    'd'   'w'   'v'   'j' 








    
