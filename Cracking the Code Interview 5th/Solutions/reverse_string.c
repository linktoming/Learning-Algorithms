//
//  reverse_string.c
//  Xcode Algorithm Project
//
//  Created by Mingming Wang on 3/6/14.
//  Copyright (c) 2014 NA. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
/* 
 1.2 Implement a function void reverse(char* str) in C or C++ which reverses a null- terminated string.
 */
void reverse(char* str){

    if (str == NULL) {
        return;
    }
    size_t i = strlen((const char *)str);
    
    char* str_reversed = (char *)malloc(sizeof(char)*(i+1));
    int j = 0;
    while (j<i) {
        
        str_reversed[j] = str[i-1-j];
        j++;
    }
    str_reversed[j]='\0';
    memcpy(str,str_reversed,strlen(str));
    free(str_reversed);

}
// This is the solution provided by the Cracking the Code Interview 5th
void reverse_v2(char *str){
    
    if (str==NULL) {
        return;
    }
    // Get the end of the string
    char *end = str;
    while (*end) {
        end++;
    }
    end--; // Set one char back since the last char is '\0'
    
    char tmp;
    while (str<end) {
        
        tmp = *str;
        *str++=*end;
        *end--=tmp;
    }
    
}
int main(){
    const char *chars = "Cool World Happy World";
    char *string = (char *)malloc(sizeof(char)*(strlen(chars)+1));
    memcpy(string,chars,strlen(chars)+1);
    
    printf("Before reversion, the string is %s\r\n",string);
    reverse_v2(string);
    printf("After reversion, the string is %s\r\n",string);
    
    free(string);
}