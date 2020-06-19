import os
import sys

def main():
    mypath = sys.argv[1]
    for root, dirs, files in os.walk(mypath):
        for fn in files:
            path = os.path.join(root, fn)
            if os.path.isfile(path):
                try:
                    size = os.stat(path).st_size  # in bytes
                    print("Plik: {}\tRozmiar:{}B".format(path, size))
                except FileNotFoundError:
                    pass

if __name__=="__main__":
    main()