#!/bin/sh

TERMSUITE_UI_DIR=$1
TARGET_DIR=$1bundles/fr.univnantes.termsuite.resources/


if [ ! -d $TERMSUITE_UI_DIR ]
then
  echo "$TERMSUITE_UI_DIR is not a directory."
  exit 1
fi

if [ ! -d $TARGET_DIR ]
then
  echo "$TERMSUITE_UI_DIR is not a termsuite-ui directory: could not find $TARGET_DIR"
  exit 1
fi

if [ ! -f termsuite-resources.jar ]
then
  echo "termsuite-resources.jar not found. Please run makejar.sh first."
  exit 1
fi

echo "Deploying to $TARGET_DIR"
cp termsuite-resources.jar $TARGET_DIR
