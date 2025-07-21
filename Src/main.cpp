#include "Igpio.hpp"

extern "C" void SystemInit();  // Provided by CMSIS startup
extern "C" int main() {
    Gpio led(GPIOA, 6);
    Gpio led1(GPIOA, 7);
    led.init(Gpio::Mode::Output, Gpio::Pull::None);
    led1.init(Gpio::Mode::Output, Gpio::Pull::None);
    while (1) {
        led.write(true);
        led1.write(true);
        for (volatile int i = 0; i < 100000; ++i);
        led.write(false);
        led1.write(false);
        for (volatile int i = 0; i < 100000; ++i);
    }
}
