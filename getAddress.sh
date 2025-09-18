#!/bin/bash
grep "address" "nodummy.txt" | cut -d ":" -f 2 