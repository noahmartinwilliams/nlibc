#include "string.h"
#include "assert.h"

int main()
{
	assert(atoi("1")==1);
	assert(atoi("0")==0);
	assert(atoi("10")==10);
	assert(atoi("-1")==-1);
	assert(atoi("0xA")==10);
	assert(atoi("hA")==10);
	assert(atoi("0xa")==10);
	assert(atoi("0xB")==11);
	assert(atoi("0xb")==11);
	assert(atoi("hB")==11);
	assert(atoi("hb")==11);
	assert(atoi("0xC")==12);
	assert(atoi("hC")==12);
	assert(atoi("0xc")==12);
	assert(atoi("hc")==12);
	assert(atoi("0xD")==13);
	assert(atoi("hD")==13);
	assert(atoi("0xd")==13);
	assert(atoi("hd")==13);
	assert(atoi("0xE")==14);
	assert(atoi("hE")==14);
	assert(atoi("0xe")==14);
	assert(atoi("he")==14);
	assert(atoi("0xF")==15);
	assert(atoi("hF")==15);
	assert(atoi("0xf")==15);
	assert(atoi("hf")==15);
	assert(atoi("0xFA")==250);
	assert(atoi("-0xFA")==-250);
	assert(atoi("-0xF9")==-249);
	assert(atoi("0xF9")==249);
	assert(atoi("hFA")==250);
	assert(atoi("-hFA")==-250);
	assert(atoi("-hF9")==-249);
	assert(atoi("hF9")==249);

	return 0;
}
