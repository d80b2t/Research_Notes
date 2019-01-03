'''
From
https://en.wikipedia.org/wiki/Gravitational_wave
t={\frac {5}{256}}\,{\frac {c^{5}}{G^{3}}}\,{\frac {r^{4}}{(m_{1}m_{2})(m_{1}+m_{2})}}.
'''

import numpy as np

## Speed of Light and Big G
c = 3e8
G = 6.67408e-11

## Two 10 M_sol BHs
mass_Msol = 10


m1 = 2e30 * mass_Msol
m2 = 2e30 * mass_Msol


r_in = np.arange(10)

for ii in range(len(r_in)):
    r =  10**(r_in[ii]) * 1e3  ## km

    t = (5./256)*((c**5/G**3))*((r**4)/((m1*m2)*(m1+m2)))
    print('Distance in km  {: 12.0f}::  gives a time in seconds of {: 32.3f} '.format(r/1000, t))

print()    
    
