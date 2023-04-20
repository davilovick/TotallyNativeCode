#ifdef _MSC_VER
	#define EXPORT __declspec(dllexport)
#else
	#if __GNUC__ >= 4
		#define EXPORT __attribute__ ((visibility("default")))
	#else
		#define EXPORT
	#endif
#endif

extern "C" 
{
	EXPORT float Add(float x, float y);
	EXPORT float Sub(float x, float y);
	EXPORT float Multiply(float x, float y);
	EXPORT int Increment(int value);
}