import os
import sys


def main():
    mypath = sys.argv[1]
    files = [f for f in os.listdir(mypath) if os.path.isfile(os.path.join(mypath, f)) and os.access(os.path.join(mypath, f), os.W_OK)]
    for file in files:
        os.remove(os.path.join(mypath, file))
    print("Usunięto {}". format(files))

if __name__=="__main__":
    main()