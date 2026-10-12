#kod: 5
#12.10.2026
#Jede kulička tam a zpět, jako v rozcvičce, a pak vypíše malou tabulku. 
import time
import math

dej = 11
pocet = 5
print("Kulička jede")
for i in range(pocet):
    print(" " * i + "O")
    time.sleep(0.1)
for i in range(pocet):
    print(" " * (pocet - i) + "O")
    time.sleep(0.1)
print ("Tabulka:")
for i in range(1, pocet + 1):
    print(i, i * i, math.sqrt(i))
