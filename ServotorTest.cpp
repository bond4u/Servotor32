// Do not remove the include below
#include "Code/Servotor32_Default/Servotor32.h"

/// test ctor
void TestCtor() {
	Servotor32 hexy;
}

/// test begin method
void TestBegin() {
	Servotor32 hexy;
	hexy.begin();
}

//The setup function is called once at startup of the sketch
void setup()
{
	TestCtor();
	TestBegin();
}

// The loop function is called in an endless loop
void loop()
{
//Add your repeated code here
}
