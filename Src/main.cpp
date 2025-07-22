#include "Igpio.hpp"
#include "HW_Init.hpp"
extern "C" void SystemInit();  // Provided by CMSIS startup
extern "C" int main() {


	HW_Initialization();



 while (1) {
        led.write(true);
        led1.write(true);
        for (volatile int i = 0; i < 1000000; ++i);
        led.write(false);
        led1.write(false);
        for (volatile int i = 0; i < 1000000; ++i);
    }
}
