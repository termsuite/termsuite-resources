#!/bin/sh

find . -name '*~' -exec rm -f {} \;

rm -f termsuite-resources.jar
jar cf termsuite-resources.jar fr en ru es de LICENSE README.md META-INF
