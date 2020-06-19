import os
import sys


def main():
    base_dir = sys.argv[1]
    target_dir = sys.argv[2]
    directories = [f for f in os.listdir(base_dir) if os.path.isdir(os.path.join(base_dir, f)) and os.access(os.path.join(base_dir, f), os.W_OK)]
    for directory in directories:
        try:
            os.symlink(os.path.join(base_dir, directory), os.path.join(target_dir, directory))
            print("Stworzono łącze symboliczne {}.".format(os.path.join(target_dir, directory)))
        except FileExistsError:
            print("Plik {} już istnieje!".format(os.path.join(target_dir, directory)))

if __name__=="__main__":
    main()