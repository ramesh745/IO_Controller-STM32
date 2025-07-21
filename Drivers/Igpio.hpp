#ifndef IGPIO_HPP
#define IGPIO_HPP

#include <cstdint>
#include "stm32f4xx.h"

class Gpio {
public:
    enum class Mode : uint8_t {
        Input  = 0b00,
        Output = 0b01,
        Alt    = 0b10,
        Analog = 0b11
    };

    enum class Pull : uint8_t {
        None  = 0b00,
        Up    = 0b01,
        Down  = 0b10
    };

    Gpio(GPIO_TypeDef* port, uint8_t pin);

    void init(Mode mode, Pull pull);
    void write(bool state);
    bool read() const;

private:
    void enableClock();

    GPIO_TypeDef* m_port;
    uint8_t m_pin;
};

#endif // IGPIO_HPP
