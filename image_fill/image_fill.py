#! /usr/bin/python

import os
import sys
from shutil import copyfile

if len(sys.argv) != 3:
	print "image_fill\nUsage - ./image_fill.py [directory] [image]\n"
	quit()

copyfile(sys.argv[2], os.path.join(sys.argv[1], sys.argv[2]))

for root, dirs, files in os.walk(str(sys.argv[1])):
	for dir in dirs:
		print os.path.join(root, dir, sys.argv[2])
		copyfile(sys.argv[2], os.path.join(root, dir, sys.argv[2]))
