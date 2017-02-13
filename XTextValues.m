function [ output_args ] = XTextValues( input_args )
%XTEXTVALUES Summary of this function goes here
%   Detailed explanation goes here
    
    Input64 = [0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1]
    Key64   = [0 0 1 1 1 0 1 1 0 0 1 1 1 0 0 0 1 0 0 1 1 0 0 0 0 0 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0 0 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0]
    
    http://people.eku.edu/styere/Encrypt/JS-DES.html
    
    
    
    
    ValueHex = 1111111111111111
    KeyHeX =  3b3898371520f75e
    
    
    
    
    Input bits: 00010001 00010001 00010001 00010001 00010001 00010001 00010001 00010001
    Key bits: 00111011 00111000 10011000 00110111 00010101 00100000 11110111 01011110
    CD[0]:  0100010 0110000 0001101 0111101 1100100 1110110 0010000 1111111
    CD[1]:  1000100 1100000 0011010 1111010 1001001 1101100 0100001 1111111
    KS[1]:  010111 000000 100001 001100 010101 011000 111101 001111
    CD[2]:  0001001 1000000 0110101 1110101 0010011 1011000 1000011 1111111
    KS[2]:  010100 010010 110111 110000 011001 001001 011111 001100
    CD[3]:  0100110 0000001 1010111 1010100 1001110 1100010 0001111 1111100
    KS[3]:  110101 001110 010010 000101 110110 001011 010011 101111
    CD[4]:  0011000 0000110 1011110 1010001 0111011 0001000 0111111 1110010
    KS[4]:  010100 111000 011100 000110 011011 101101 111010 101001
    CD[5]:  1100000 0011010 1111010 1000100 1101100 0100001 1111111 1001001
    KS[5]:  011010 001001 000010 100111 000110 100111 110101 111011
    CD[6]:  0000000 1101011 1101010 0010011 0110001 0000111 1111110 0100111
    KS[6]:  101100 011000 000001 101110 101011 111101 100100 110000
    CD[7]:  0000011 0101111 0101000 1001100 1000100 0011111 1111001 0011101
    KS[7]:  101000 000100 001010 110010 110000 010110 111101 110010
    CD[8]:  0001101 0111101 0100010 0110000 0010000 1111111 1100100 1110110
    KS[8]:  101101 000001 101100 110100 111111 011000 101000 011100
    CD[9]:  0011010 1111010 1000100 1100000 0100001 1111111 1001001 1101100
    KS[9]:  001000 101101 110101 000010 100100 111000 011001 111100
    CD[10]:  1101011 1101010 0010011 0000000 0000111 1111110 0100111 0110001
    KS[10]:  011010 000110 000101 010111 110110 011011 111110 000100
    CD[11]:  0101111 0101000 1001100 0000011 0011111 1111001 0011101 1000100
    KS[11]:  001001 011100 010100 011001 001110 000110 011010 111101
    CD[12]:  0111101 0100010 0110000 0001101 1111111 1100100 1110110 0010000
    KS[12]:  010001 110000 000110 110011 011110 110111 100010 000111
    CD[13]:  1110101 0001001 1000000 0110101 1111111 0010011 1011000 1000011
    KS[13]:  101111 111000 100010 010001 101001 100110 000110 111011
    CD[14]:  1010100 0100110 0000001 1010111 1111100 1001110 1100010 0001111
    KS[14]:  000111 110010 001010 001010 101001 110011 101101 000111
    CD[15]:  1010001 0011000 0000110 1011110 1110010 0111011 0001000 0111111
    KS[15]:  001110 100001 010010 011100 111101 101000 001111 110010
    CD[16]:  0100010 0110000 0001101 0111101 1100100 1110110 0010000 1111111
    KS[16]:  000100 010111 110010 000001 110101 111110 000101 001110
    L[0]:  00000000 11111111 00000000 11111111
    R[0]:  00000000 00000000 00000000 00000000
    Round 1
    E   :  000000 000000 000000 000000 000000 000000 000000 000000
    KS  :  010111 000000 100001 001100 010101 011000 111101 001111
    E xor KS:  010111 000000 100001 001100 010101 011000 111101 001111
    Sbox:  1011 1111 0001 1001 1111 1110 0011 0100
    P   : 11110111 10101100 01000110 11111010
    L[i]: 00000000 00000000 00000000 00000000
    R[i]: 11110111 01010011 01000110 00000101
    Round 2
    E   :  111110 101110 101010 100110 101000 001100 000000 001011
    KS  :  010100 010010 110111 110000 011001 001001 011111 001100
    E xor KS:  101010 111100 011101 010110 110001 000101 011111 000111
    Sbox:  0110 0010 1111 0101 0110 0100 0110 1000
    P   : 11001100 00010101 10010111 10001100
    L[i]: 11110111 01010011 01000110 00000101
    R[i]: 11001100 00010101 10010111 10001100
    Round 3
    E   :  011001 011000 000010 101011 110010 101111 110001 011001
    KS  :  110101 001110 010010 000101 110110 001011 010011 101111
    E xor KS:  101100 010110 010000 101110 000100 100100 100010 110110
    Sbox:  0010 1101 0001 1101 0100 1111 0100 1101
    P   : 10011100 00111100 01111010 01111000
    L[i]: 11001100 00010101 10010111 10001100
    R[i]: 01101011 01101111 00111100 01111101
    Round 4
    E   :  101101 010110 101101 011110 100111 111000 001111 111010
    KS  :  010100 111000 011100 000110 011011 101101 111010 101001
    E xor KS:  111001 101110 110001 011000 111100 010101 110101 010011
    Sbox:  1010 0001 0100 1011 0000 1101 0000 0101
    P   : 10010000 11000001 01101010 01101000
    L[i]: 01101011 01101111 00111100 01111101
    R[i]: 01011100 11010100 11111101 11100100
    Round 5
    E   :  001011 111001 011010 101001 011111 111011 111100 001000
    KS  :  011010 001001 000010 100111 000110 100111 110101 111011
    E xor KS:  010001 110000 011000 001110 011001 011100 001001 110011
    Sbox:  1010 0101 1011 1010 0011 0101 0100 1100
    P   : 00101100 11010000 01100011 11111100
    L[i]: 01011100 11010100 11111101 11100100
    R[i]: 01000111 10111111 01011111 10000001
    Round 6
    E   :  101000 001111 110111 111110 101011 111111 110000 000010
    KS  :  101100 011000 000001 101110 101011 111101 100100 110000
    E xor KS:  000100 010111 110110 010000 000000 000010 010100 110010
    Sbox:  1101 1010 1100 0001 0010 0001 1001 0110
    P   : 11000010 10001011 10100001 10100011
    L[i]: 01000111 10111111 01011111 10000001
    R[i]: 10011110 01011111 01011100 01000111
    Round 7
    E   :  110011 111100 001011 111110 101011 111000 001000 001111
    KS  :  101000 000100 001010 110010 110000 010110 111101 110010
    E xor KS:  011011 111000 000001 001100 011011 101110 110101 111101
    Sbox:  0101 1001 1101 1001 1001 0011 0000 0110
    P   : 10100101 00101011 11100001 01100010
    L[i]: 10011110 01011111 01011100 01000111
    R[i]: 11100010 10010100 10111110 11100011
    Round 8
    E   :  111100 000101 010010 101001 010111 111101 011100 000111
    KS  :  101101 000001 101100 110100 111111 011000 101000 011100
    E xor KS:  010001 000100 111110 011101 101000 100101 110100 011011
    Sbox:  1010 1000 0111 1110 1010 0010 0110 1110
    P   : 00001101 11111011 00010110 11100100
    L[i]: 11100010 10010100 10111110 11100011
    R[i]: 10010011 10100100 01001010 10100011
    Round 9
    E   :  110010 100111 110100 001000 001001 010101 010100 000111
    KS  :  001000 101101 110101 000010 100100 111000 011001 111100
    E xor KS:  111010 001010 000001 001010 101101 101101 001101 111011
    Sbox:  1010 1011 1101 0110 0010 1111 0001 0101
    P   : 01010110 11101001 01111011 10101000
    L[i]: 10010011 10100100 01001010 10100011
    R[i]: 10110100 01111101 11000101 01001011
    Round 10
    E   :  110110 101000 001111 111011 111000 001010 101001 010111
    KS  :  011010 000110 000101 010111 110110 011011 111110 000100
    E xor KS:  101100 101110 001010 101100 001110 010001 010111 010011
    Sbox:  0010 0001 0011 0111 0110 0110 1100 0101
    P   : 10000100 01110100 01011010 10101101
    L[i]: 10110100 01111101 11000101 01001011
    R[i]: 00010111 11010000 00010000 00001110
    Round 11
    E   :  000010 101111 111010 100000 000010 100000 000001 011100
    KS  :  001001 011100 010100 011001 001110 000110 011010 111101
    E xor KS:  001011 110011 101110 111001 001100 100110 011011 100001
    Sbox:  0010 0110 0000 1100 1011 0101 1111 0010
    P   : 01100011 00010010 00110110 11011001
    L[i]: 00010111 11010000 00010000 00001110
    R[i]: 11010111 01101111 11110011 10010010
    Round 12
    E   :  011010 101110 101101 011111 111110 100111 110010 100101
    KS  :  010001 110000 000110 110011 011110 110111 100010 000111
    E xor KS:  001011 011110 101011 101100 100000 010000 010000 100010
    Sbox:  0010 1010 1001 0111 0100 0000 0011 1011
    P   : 11001110 01001110 00011111 00000000
    L[i]: 11010111 01101111 11110011 10010010
    R[i]: 11011001 10011110 00001111 00001110
    Round 13
    E   :  011011 110011 110011 111100 000001 011110 100001 011101
    KS  :  101111 111000 100010 010001 101001 100110 000110 111011
    E xor KS:  110100 001011 010001 101101 101000 111000 100111 100110
    Sbox:  1001 0010 0010 1101 1010 0001 1000 0001
    P   : 11000001 10000000 00111000 11000111
    L[i]: 11011001 10011110 00001111 00001110
    R[i]: 00010110 11101111 11001011 01010101
    Round 14
    E   :  100010 101101 011101 011111 111001 010110 101010 101010
    KS  :  000111 110010 001010 001010 101001 110011 101101 000111
    E xor KS:  100101 011111 010111 010101 010000 100101 000111 101101
    Sbox:  1000 0101 1110 0010 1000 0010 0111 1000
    P   : 00001011 11110001 01000101 00010100
    L[i]: 00010110 11101111 11001011 01010101
    R[i]: 11010010 01101111 01001010 00011010
    Round 15
    E   :  011010 100100 001101 011110 101001 010100 000011 110101
    KS  :  001110 100001 010010 011100 111101 101000 001111 110010
    E xor KS:  010100 000101 011111 000010 010100 111100 001100 000111
    Sbox:  0110 0100 0001 1101 0011 1011 1000 1000
    P   : 10111100 00100000 10110010 11010001
    L[i]: 11010010 01101111 01001010 00011010
    R[i]: 10101010 11001111 01111001 10000100
    Round 16
    E   :  010101 010101 011001 011110 101111 110011 110000 001001
    KS  :  000100 010111 110010 000001 110101 111110 000101 001110
    E xor KS:  010001 000010 101011 011111 011010 001101 110101 000111
    Sbox:  1010 0001 1001 1001 0000 1001 0000 1000
    P   : 10011100 10000000 01100011 01000000
    L[i]: 10101010 11001111 01111001 10000100
    R[i]: 01001110 11101111 00101001 01011010
    LR[16]  01001110 11101111 00101001 01011010 10101010 11001111 01111001 10000100
    Output  00111100 11110001 01110010 11111101 00001001 10011100 01111001 10110010

    
    
Input64 = [0 0 0 0 0 0 0 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1]
Key64   = [0 0 1 1 1 0 1 1 0 0 1 1 1 0 0 0 1 0 0 1 1 0 0 0 0 0 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0 0 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0]
   
    
ValueHex = 0123456789abcdef
KeyHeX =  3b3898371520f75e   
    
    
Input bits: 00000001 00100011 01000101 01100111 10001001 10101011 11001101 11101111
Key bits: 00111011 00111000 10011000 00110111 00010101 00100000 11110111 01011110
CD[0]:  0100010 0110000 0001101 0111101 1100100 1110110 0010000 1111111
CD[1]:  1000100 1100000 0011010 1111010 1001001 1101100 0100001 1111111
KS[1]:  010111 000000 100001 001100 010101 011000 111101 001111
CD[2]:  0001001 1000000 0110101 1110101 0010011 1011000 1000011 1111111
KS[2]:  010100 010010 110111 110000 011001 001001 011111 001100
CD[3]:  0100110 0000001 1010111 1010100 1001110 1100010 0001111 1111100
KS[3]:  110101 001110 010010 000101 110110 001011 010011 101111
CD[4]:  0011000 0000110 1011110 1010001 0111011 0001000 0111111 1110010
KS[4]:  010100 111000 011100 000110 011011 101101 111010 101001
CD[5]:  1100000 0011010 1111010 1000100 1101100 0100001 1111111 1001001
KS[5]:  011010 001001 000010 100111 000110 100111 110101 111011
CD[6]:  0000000 1101011 1101010 0010011 0110001 0000111 1111110 0100111
KS[6]:  101100 011000 000001 101110 101011 111101 100100 110000
CD[7]:  0000011 0101111 0101000 1001100 1000100 0011111 1111001 0011101
KS[7]:  101000 000100 001010 110010 110000 010110 111101 110010
CD[8]:  0001101 0111101 0100010 0110000 0010000 1111111 1100100 1110110
KS[8]:  101101 000001 101100 110100 111111 011000 101000 011100
CD[9]:  0011010 1111010 1000100 1100000 0100001 1111111 1001001 1101100
KS[9]:  001000 101101 110101 000010 100100 111000 011001 111100
CD[10]:  1101011 1101010 0010011 0000000 0000111 1111110 0100111 0110001
KS[10]:  011010 000110 000101 010111 110110 011011 111110 000100
CD[11]:  0101111 0101000 1001100 0000011 0011111 1111001 0011101 1000100
KS[11]:  001001 011100 010100 011001 001110 000110 011010 111101
CD[12]:  0111101 0100010 0110000 0001101 1111111 1100100 1110110 0010000
KS[12]:  010001 110000 000110 110011 011110 110111 100010 000111
CD[13]:  1110101 0001001 1000000 0110101 1111111 0010011 1011000 1000011
KS[13]:  101111 111000 100010 010001 101001 100110 000110 111011
CD[14]:  1010100 0100110 0000001 1010111 1111100 1001110 1100010 0001111
KS[14]:  000111 110010 001010 001010 101001 110011 101101 000111
CD[15]:  1010001 0011000 0000110 1011110 1110010 0111011 0001000 0111111
KS[15]:  001110 100001 010010 011100 111101 101000 001111 110010
CD[16]:  0100010 0110000 0001101 0111101 1100100 1110110 0010000 1111111
KS[16]:  000100 010111 110010 000001 110101 111110 000101 001110
L[0]:  11001100 00000000 11001100 11111111
R[0]:  11110000 10101010 11110000 10101010
Round 1
E   :  011110 100001 010101 010101 011110 100001 010101 010101
KS  :  010111 000000 100001 001100 010101 011000 111101 001111
E xor KS:  001001 100001 110100 011001 001011 111001 101000 011010
Sbox:  1110 1101 0010 0001 0111 0110 1100 0000
P   : 10100000 10111100 11000010 10011101
L[i]: 11110000 10101010 11110000 10101010
R[i]: 01101100 10111100 00001110 01100010
Round 2
E   :  001101 011001 010111 111000 000001 011100 001100 000100
KS  :  010100 010010 110111 110000 011001 001001 011111 001100
E xor KS:  011001 001011 100000 001000 011000 010101 010011 001000
Sbox:  1001 0010 1101 0000 1101 1101 0011 0110
P   : 01110111 10000111 00100101 00101010
L[i]: 01101100 10111100 00001110 01100010
R[i]: 10000111 00101101 11010101 10000000
Round 3
E   :  010000 001110 100101 011011 111010 101011 110000 000001
KS  :  110101 001110 010010 000101 110110 001011 010011 101111
E xor KS:  100101 000000 110111 011110 001100 100000 100011 101110
Sbox:  1000 1111 0011 1111 1011 1001 1011 0010
P   : 11110111 11001010 01110100 11010101
L[i]: 10000111 00101101 11010101 10000000
R[i]: 10011011 01110110 01111010 10110111
Round 4
E   :  110011 110110 101110 101100 001111 110101 010110 101111
KS  :  010100 111000 011100 000110 011011 101101 111010 101001
E xor KS:  100111 001110 110010 101010 010100 011000 101100 000110
Sbox:  0010 0100 0001 1011 0011 1110 0111 0100
P   : 10110110 01110000 00000110 11111000
L[i]: 10011011 01110110 01111010 10110111
R[i]: 00110001 01011101 11010011 01111000
Round 5
E   :  000110 100010 101011 111011 111010 100110 101111 110000
KS  :  011010 001001 000010 100111 000110 100111 110101 111011
E xor KS:  011100 101011 101001 011100 111100 000001 011010 001011
Sbox:  0000 1111 0110 0100 0000 1010 1010 0011
P   : 01010000 00101011 01011100 00010101
L[i]: 00110001 01011101 11010011 01111000
R[i]: 11001011 01011101 00100110 10100010
Round 6
E   :  011001 010110 101011 111010 100100 001101 010100 000101
KS  :  101100 011000 000001 101110 101011 111101 100100 110000
E xor KS:  110101 001110 101010 010100 001111 110000 110000 110101
Sbox:  0011 0100 1111 1000 0001 0111 1010 1001
P   : 00101100 00100001 00101111 01011111
L[i]: 11001011 01011101 00100110 10100010
R[i]: 00011101 01111100 11111100 00100111
Round 7
E   :  100011 111010 101111 111001 011111 111000 000100 001110
KS  :  101000 000100 001010 110010 110000 010110 111101 110010
E xor KS:  001011 111110 100101 001011 101111 101110 111001 111100
Sbox:  0010 1111 1101 1111 1101 0011 1110 0101
P   : 11100101 01111101 01111111 01110001
L[i]: 00011101 01111100 11111100 00100111
R[i]: 00101110 00100000 01011001 11010011
Round 8
E   :  100101 011100 000100 000000 001011 110011 111010 100110
KS  :  101101 000001 101100 110100 111111 011000 101000 011100
E xor KS:  001000 011101 101000 110100 110100 101011 010010 111010
Sbox:  0010 1011 1000 0011 1100 0101 1100 0011
P   : 11000001 01011110 01101011 00001001
L[i]: 00101110 00100000 01011001 11010011
R[i]: 11011100 00100010 10010111 00101110
Round 9
E   :  011011 111000 000100 000101 010010 101110 100101 011101
KS  :  001000 101101 110101 000010 100100 111000 011001 111100
E xor KS:  010011 010101 110001 000111 110110 010110 111100 100001
Sbox:  0110 0001 0100 0101 0101 0100 1001 0010
P   : 10100010 00000111 11010010 00001001
L[i]: 11011100 00100010 10010111 00101110
R[i]: 10001100 00100111 10001011 11011010
Round 10
E   :  010001 011000 000100 001111 110001 010111 111011 110101
KS  :  011010 000110 000101 010111 110110 011011 111110 000100
E xor KS:  001011 011110 000001 011000 000111 001100 000101 110001
Sbox:  0010 1010 1101 1011 1100 0110 1011 1111
P   : 11001111 01101111 00001111 01101001
L[i]: 10001100 00100111 10001011 11011010
R[i]: 00010011 01001101 10011000 01000111
Round 11
E   :  100010 100110 101001 011011 110011 110000 001000 001110
KS  :  001001 011100 010100 011001 001110 000110 011010 111101
E xor KS:  101011 111010 111101 000010 111101 110110 010010 110011
Sbox:  1001 0011 0010 1101 0101 1010 1100 1100
P   : 11111000 10110100 01010000 01100111
L[i]: 00010011 01001101 10011000 01000111
R[i]: 01110100 10010011 11011011 10111101
Round 12
E   :  101110 101001 010010 100111 111011 110111 110111 111010
KS  :  010001 110000 000110 110011 011110 110111 100010 000111
E xor KS:  111111 011001 010100 010100 100101 000000 010101 111101
Sbox:  1101 0110 1100 1000 1100 1100 0101 0110
P   : 01010011 10010111 10000001 01111010
L[i]: 01110100 10010011 11011011 10111101
R[i]: 01000000 11011010 00011001 00111101
Round 13
E   :  101000 000001 011011 110100 000011 110010 100111 111010
KS  :  101111 111000 100010 010001 101001 100110 000110 111011
E xor KS:  000111 111001 111001 100101 101010 010100 100001 000001
Sbox:  0100 0000 1011 0000 1101 0011 0110 0001
P   : 00100101 00110100 10101101 00000100
L[i]: 01000000 11011010 00011001 00111101
R[i]: 01010001 10100111 01110110 10111001
Round 14
E   :  101010 100011 110100 001110 101110 101101 010111 110010
KS  :  000111 110010 001010 001010 101001 110011 101101 000111
E xor KS:  101101 010001 111110 000100 000111 011110 111010 110101
Sbox:  0001 1100 0111 1110 1100 1011 0101 1001
P   : 00011111 01111101 00111000 01010110
L[i]: 01010001 10100111 01110110 10111001
R[i]: 01011111 10100111 00100001 01101011
Round 15
E   :  101011 111111 110100 001110 100100 000010 101101 010110
KS  :  001110 100001 010010 011100 111101 101000 001111 110010
E xor KS:  100101 011110 100110 010010 011001 101010 100010 100100
Sbox:  1000 1010 1001 0010 0011 1000 0100 0100
P   : 01110100 11011000 00000001 10100000
L[i]: 01011111 10100111 00100001 01101011
R[i]: 00100101 01111111 01110111 00011001
Round 16
E   :  100100 001010 101111 111110 101110 101110 100011 110010
KS  :  000100 010111 110010 000001 110101 111110 000101 001110
E xor KS:  100000 011101 011101 111111 011011 010000 100110 111100
Sbox:  0100 1011 1111 1110 1001 0000 1101 0101
P   : 01100111 01011001 11011001 01100101
L[i]: 00100101 01111111 01110111 00011001
R[i]: 00111000 11111110 11111000 00001110
LR[16]  00111000 11111110 11111000 00001110 00100101 01111111 01110111 00011001
Output  10101010 00111001 10111001 01110111 01111110 11111100 00111100 00010100



    
end

