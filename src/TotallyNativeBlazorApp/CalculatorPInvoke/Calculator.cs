using System.Runtime.InteropServices;

namespace CalculatorPInvoke
{
    public static class Calculator
    {
        [DllImport("libCalculator")]
        public static extern float Add(float x, float y);

        [DllImport("libCalculator")]
        public static extern float Sub(float x, float y);

        [DllImport("libCalculator")]
        public static extern float Multiply(float x, float y);

        [DllImport("libCalculator")]
        public static extern int Increment(int value);
    }
}