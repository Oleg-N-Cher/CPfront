MODULE TestASH;

VAR
  long: LONGINT;

BEGIN
  long := ASH(long, 60); (* Translates to:

	TestASH_long = __ASHL(TestASH_long, 60);
	
#define __ASHL(x, n)	((INTEGER)(x)<<(n))

Argument TestASH_long casts to INTEGER and high bits are lost!

*)
END TestASH.
