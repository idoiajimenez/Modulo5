/**
* Implementación stack de enteros.
*
* @file
*
*/

#ifndef STACK_H
#define STACK_H
//! NUMERO MAX
#define max 10

extern int top;

//! NUEMRO DE ALGO
int stack[max];

/**
* Saca el ultimo elemento del stack
*/
void push(int);

/**
* Añade elemento al stack
*/
int pop();
#endif
