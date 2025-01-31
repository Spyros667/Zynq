3 sets of registers ("devices"): 76h(72h) C4h(C0h) 7Eh(7Ah)

programming sequence: address 76h

    C7 -> 00: enable TPI
    (page 7 of Programmer's Reference: steps (9x))
    1B-1D <- (read) B00203 (wait for)