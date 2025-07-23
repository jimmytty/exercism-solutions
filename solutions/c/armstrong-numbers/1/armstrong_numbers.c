#include "armstrong_numbers.h"

bool is_armstrong_number(int candidate) {

    int length = 0;
    int number = candidate;
  
    do {
        length++;
        number =  number / 10;
    } while ( number != 0 );
  
    int sum = 0;
    number = candidate;
  
    for ( int i = 1; i <= length; i++ ) {
        int last_digit = number % 10;
        int pow = last_digit;
        for ( int j = 1; j < length; j++ ) {
            pow *= last_digit;
        }
        sum += pow;
        number = number / 10;
    }
  
    bool test = false;
    if ( sum == candidate ) {
        test = true;
    }
  
    return test;
}
