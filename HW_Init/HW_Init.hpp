#ifndef HW_INIT_HPP
#define HW_INIT_HPP

#include "Igpio.hpp"

// Declare these as extern
extern Gpio led;
extern Gpio led1;

// Declare the function
#ifdef __cplusplus
extern "C" {
#endif
void HW_Initialization(void);
#ifdef __cplusplus
}
#endif

#endif // HW_INIT_HPP
