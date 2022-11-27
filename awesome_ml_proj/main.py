import numpy as np  
import matplotlib.pyplot as plt
import torch
from utils import say_hi

def main():
    say_hi()
    print(np.__version__)
    print(torch.__version__)
    plt.figure()
    plt.plot([1, 2, 3, 4])
    plt.ylabel('some numbers')
    plt.show()

if __name__ == '__main__':
    main()