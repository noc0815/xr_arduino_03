//
// Title        : Sieve of Eratosthenes
// Author       : Claus Kuehnel
// Date         : 2011-02-22
// Id			: sieve.pde
// Version      : 0022
// based on     : optional
//
// DISCLAIMER:
// The author is in no way responsible for any problems or damage caused by
// using this code. Use at your own risk.
//
// LICENSE:
// This code is distributed under the GNU Public License
// which can be found at http://www.gnu.org/licenses/gpl.txt
//

#define TRUE 1
#define FALSE 0
#define SIZE 1000

int i,k, prime,count;
unsigned int iter;
unsigned long time;
    
char flags[SIZE+1];

void setup() 
{ 
  Serial.begin(19200);
  Serial.println("Sieve of Eratosthenes - Arduino 2009");
  
  /*-------------------------------------------------------------------
  The following code is an implementation of the Sieve of Eratosthenes.
  -------------------------------------------------------------------*/
  Serial.println("5000 iterations");
  time = millis();
  for (iter = 1; iter <= 5000; iter++)     /* do program 5000 times */
  {	
    count = 0;			     		 /* initialize prime counter */
    for (i = 0; i <= SIZE; i++)	     /* set all flags true */
      flags[i] = TRUE;
    for (i = 0; i <= SIZE; i++)
    {
      if (flags[i])		             /* found a prime */
      {
	prime = i + i + 3;	             /* twice index + 3 */
	for (k = i + prime; k <= SIZE; k += prime)
	  flags[k] = FALSE;	             /* kill all multiples */
	count++;		                 /* primes found */
      }
    }
  }
  time = millis()-time;
  Serial.print(count);
  Serial.println(" primes.");	    
  Serial.print("Runtime = ");
  Serial.print(time);
  Serial.println(" ms\n");
} 
  
void loop() 
{  
   
}
