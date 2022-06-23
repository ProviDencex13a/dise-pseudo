#include "pseudoMethod.h"
using namespace std;
using namespace godot;

void pseudoMethod::_register_methods() 
{
	register_method("getoutput", &pseudoMethod::getoutput);
	register_method("getseed", &pseudoMethod::getseed);
}
void pseudoMethod::_init()
{
}
void pseudoMethod::getseed()
{
	srand(time(NULL));
}
int pseudoMethod::getoutput()
{
	int output;
	for (int c = 0; c <= 1; c++) 
	{
		output=rand() % 5 + 1;
	}
	return output;
}