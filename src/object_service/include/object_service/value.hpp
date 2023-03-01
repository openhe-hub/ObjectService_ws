#include <stdint.h>

class Command {
   public:
    const static uint8_t CREATE = 0x01;
    const static uint8_t READ = 0x02;
};