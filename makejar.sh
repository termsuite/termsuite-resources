#!/bin/sh

find . -name '*~' -exec rm -f {} \;

rm -f termsuite-resources.jar
jar cf termsuite-resources.jar fr en ru es de LICENSE README.md META-INF
jar cf termsuite-resources-fr.jar fr LICENSE README.md META-INF
jar cf termsuite-resources-en.jar en LICENSE README.md META-INF
jar cf termsuite-resources-de.jar de LICENSE README.md META-INF
jar cf termsuite-resources-es.jar es LICENSE README.md META-INF
jar cf termsuite-resources-ru.jar ru LICENSE README.md META-INF
