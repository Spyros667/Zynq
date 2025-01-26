#include <cstdio>

using namespace std;

int main ()
{
	for (int i = 0; i < 256 - 1; ++i)
	{
		printf("0001%02X%02X\n", i + 1, i);
	}
	return 0;
}
