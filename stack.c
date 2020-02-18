# include "stack.h"

int top=-1;
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
