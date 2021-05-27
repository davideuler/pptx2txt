#!/bin/bash
set -eu -o pipefail

python ../pptx2txt.py sample1.pptx sample2.pptx sample3.pptx
diff sample1.txt expected/sample1.txt
diff sample2.txt expected/sample2.txt
diff sample2.txt expected/sample2.txt
