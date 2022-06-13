#!/bin/bash
find . -type f -name "*.txt" -exec chmod u+r {} \;
find . -type f \! -name "*.txt" -exec chmod 700 {} \;
find . -type d \! -name '.' -exec chmod u+w {} \;
