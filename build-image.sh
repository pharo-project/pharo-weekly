#!/usr/bin/env bash

wget --quiet -O - get.pharo.org/64/120+vm | bash
./pharo Pharo.image eval --save "Metacello new baseline: 'Microdown'; repository: 'gitlocal://src'; ignoreImage; onConflictUseIncoming; onWarning: [:ex | ex load]; load"
