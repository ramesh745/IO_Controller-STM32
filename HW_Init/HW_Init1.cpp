#include "Igpio.hpp"
#include "stm32f4xx.h"
#include "HW_Init.hpp"
// These must be defined **only once**, in one .cpp file
	Gpio led(GPIOA, 6);
	Gpio led1(GPIOA, 7);

 void HW_Initialization(void) {
    led.init(Gpio::Mode::Output, Gpio::Pull::None);
    led1.init(Gpio::Mode::Output, Gpio::Pull::None);
}
