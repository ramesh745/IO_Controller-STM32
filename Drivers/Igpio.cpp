// gpio.cpp
#include "Igpio.hpp"
#include "stm32f4xx.h"

Gpio::Gpio(GPIO_TypeDef* port, uint8_t pin)
: m_port(port), m_pin(pin) {}

void Gpio::enableClock() {
// Clock enable logic, supports GPIOA to GPIOI
if (m_port == GPIOA) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
else if (m_port == GPIOB) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
else if (m_port == GPIOC) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
else if (m_port == GPIOD) RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
else if (m_port == GPIOE) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOEEN;
else if (m_port == GPIOF) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOFEN;
else if (m_port == GPIOG) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOGEN;
else if (m_port == GPIOH) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOHEN;
else if (m_port == GPIOI) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOIEN;
}

void Gpio::init(Mode mode, Pull pull) {
enableClock();

// Set mode
m_port->MODER &= ~(0x3 << (m_pin * 2));
m_port->MODER |= (static_cast<uint32_t>(mode) << (m_pin * 2));

// Set pull-up/pull-down
m_port->PUPDR &= ~(0x3 << (m_pin * 2));
m_port->PUPDR |= (static_cast<uint32_t>(pull) << (m_pin * 2));
}

void Gpio::write(bool state) {
if (state)
    m_port->BSRR = (1 << m_pin);
else
    m_port->BSRR = (1 << (m_pin + 16));
}

bool Gpio::read() const {
return (m_port->IDR & (1 << m_pin)) != 0;
}
