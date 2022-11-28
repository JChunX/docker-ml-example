import numpy as np  
import matplotlib.pyplot as plt
from src.utils import say_hi

def main():
    say_hi()
    plt.figure()
    plt.plot([1, 2, 3, 4])
    plt.ylabel('some numbers')
    plt.show()

if __name__ == '__main__':
    main()