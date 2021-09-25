#!/bin/bash
HASHSUM=$(find $1 -type f \( -exec sha1sum "$PWD"/{} \; \) | awk '{print $1}' | sort | sha1sum)
echo $HASHSUM