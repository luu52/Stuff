Feature: Calculator

Scenario Outline: entering one digit numbers
Given I am on the calculator main page
And I have pressed <Cbtn>
When I press <button>
Then it should show in the screen the number:<value>

Examples:

	|button		|value	|
	|btn0		|0		|
	|btn1		|1		|
	|btn2		|2		|
	|btn3		|3		|
	|btn4		|4		|
	|btn5		|5		|
	|btn6		|6		|
	|btn7		|7		|
	|btn8		|8		|
	|btn9		|9		|

Scenario Outline: entering more than one digit numbers
Given I am on the calculator main page
And I have pressed <Cbtn>
When I press <button>
And I press <button>
Then it should show in the screen the number:<value>

Examples: 

	|button		|value	|
	|btn0		|0		|
	|btn1		|1		|
	|btn2		|2		|
	|btn3		|3		|
	|btn4		|4		|
	|btn5		|5		|
	|btn6		|6		|
	|btn7		|7		|
	|btn8		|8		|
	|btn9		|9		|

Scenario: Button C
Given I am on the calculator main page
When I press the button <Cbtn>
Then the calculator clears

Scenario: Equal button
Given I am on the calculator main page
And I have an operation on the screen
When I press the <equal> button
Then I should get a <result>

Scenario Outline: Sum numbers
Given I have pressed <Cbtn>
And I write <number1> in the calculator
And I press the + button
And I write <number2> in the calculator
When I press the <equal> button
Then the result is <result>

Examples:

	|number1		|number2		|result		|
	|45				|2				|47			|


Scenario Outline: Operations with more than one sum symbol
Given I have pressed <Cbtn>  
And I write <number1> in the calculator
And I press the + button
When I press press the + button again
Then I should get just 1 operation and lets you continue with the operation

Examples:

	|number1		|number2		|result		|
	|4		    	|2		    	|6		    |


Scenario Outline: Susbtract numbers
Given I have pressed <Cbtn> 
And I write <number1> in the calculator
And I press the - button
And I write <number2> in the calculator
When I press the <equal> button
Then the result is <result>

Examples:

	|number1		|number2		|result		|
	|4				|2				|2			|


Scenario Outline: Operations with more than one susbtract symbol
Given I have pressed <Cbtn> 
And I write <number1> in the calculator
And I press the - button
When I press press the - button again
Then I should get just 1 operation and lets you continue with the operation

Examples:

	|number1		|number2		|result		|
	|4				|2				|2			|
	

Scenario Outline: Divide numbers
Given I have pressed <Cbtn> 
And I write <number1> in the calculator
And I press the / button
And I write <number2> in the calculator
When I press the <equal> button
Then the result is <result>

Examples:

	|number1	|number2	|result		|
	|4			|2			|2			|


Scenario Outline: Operations with more than one divide symbol
Given I have pressed <Cbtn>  
And I write <number1> in the calculator
And I press the / button
When I press press the / button again
Then I should get just 1 operation and lets you continue with the operation

Examples:

	|number1	|number2	|result		|
	|4			|2			|2			|


Scenario: Divide numbers by 0
Given I have pressed <Cbtn> 
And I write <number1> in the calculator
And I press the / button
When I enter a 0 in the calculator
Then it displays in the screen: <error>

Scenario Outline: Multiply numbers
Given I have pressed <Cbtn> 
And I write <number1> in the calculator
And I press the * button
And I write <number2> in the calculator
When I press the <equal> button
Then the result is <result>

Examples:

	|number1	|number2	|result		|
	|4			|2			|8			|


Scenario Outline: Divide numbers with more than one multiply symbol
Given I have pressed <Cbtn> 
And I write <number1> in the calculator
And I press the * button
When I press press the * button again
Then I should get just 1 operation and lets you continue with the operation

Examples:

	|number1	|number2	|result		|
	|4			|2			|8			|


Scenario Outline: Press the equal button with just number1 and the operation symbol
Given I have pressed <Cbtn> 
And I write <number1> in the calculator
And I press the <operation> button 
When I press the equal button
Then the result is <result>

Examples:

	|number1	|operation	|result		|
	|4			|+			|8			|
	|6			|-			|0			|
	|12			|*			|144		|
	|6			|/			|1			|


Scenario Outline: Operations with more than one coma
Given I have pressed <Cbtn> 
And I write <number1> in the calculator
And I press the , button
When I press press the , button again
Then I should get just 1 coma and lets you continue with the operation

Examples:
    
    | number1      |number2    |result		|
    | 6  	   	   |7  	       |6,7			|


Scenario Outline: Operations with negative numbers
Given I have pressed <Cbtn>
And I enter <minBtn>
And I write <number1> in the calculator
And I press the <operation> button in the calculator
And I write the <number2> in the calculator
When I press the <equal> button
Then the result is <result>

Examples:
    
	| number1      |operation	|number2       |result		|
    | -4 	   	   |+/*-		|2  	       |-2			|