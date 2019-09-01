import sys
import os
print(os.readlink('/proc/self/exe'))
print(sys.executable)
print(sys.path)
