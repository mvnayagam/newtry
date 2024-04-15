import numpy as np
np.set_printoptions(precision=12, suppress = True)

c = 1 #a = input("---> Enter matrix : ")
a = np.array([
    [16.9099572586813807, 0.0000010422001812,0.000001036915574,],
    [8.4549807553889416,  14.6416874935205943,  0.0001553085785431],
    [0.0000012132257859,   0.0002108128916247, 19.9966106230517049]])

angtobohr=1.8897259886

a_new = a/a[0][0]

c_new = a * angtobohr

print(f"---> New global constant in bohr unit : \n\n {c_new}")

print(f"---> cell matrix : \n\n  {a_new}")



