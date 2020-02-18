/**
* Programa que comprueba si un número es un número de Armstrong.
*
* @file
*
*/
# include <stdio.h>
# include <math.h>
//! NUMERO MAX
#define max 10

//! NUEMRO DE ALGO
int top=-1;
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

/**
* Verifica si un numero es de Amstrong o no
*
* @param numb El numero que quieres comprobar
*
* @return int 0 si es amstrong o 1 si no lo es
*
*/
 
int is_armstrong_number(int numb);
/**
* la función principal
*/

void main(){   
	int n;   
	printf("Introduce un número entero");   
	scanf("%d",&n);   
	if (is_armstrong_number(n))      
		printf("%d es un número de armstrong \U0001F60E \n", n);   
	else printf("%d no es un número de armstrong \U0001F622 \n", n);
}

int is_armstrong_number(int numb){   
	int temp, count, value;   
	temp=numb;   
	count=0;   
	while(numb >0)   {    
		int remainder;  
		remainder=numb%10;      
		push(remainder);      
		count++;      
		numb=numb/10;   
	}   numb=temp;   
	value=0;   
	while(top >=0)   {
		int j;      
		j=pop();      
		value=value+pow(j,count);   
	}   

	if(value==numb)
		return 1;   
	else 
		return 0;
}


void push(int m){   
	top++;   
	stack[top]=m;
}


int pop(){   
	   
	if(top==-1)
		return(top);   
	else   
	{
		int j;      
		j=stack[top];      
		top--;      
		return(j);   
	}
}
