#!/usr/bin/env bash

wget --quiet -O - get.pharo.org/64/120+vm | bash
./pharo Pharo.image eval --save "Metacello new baseline: 'Microdown'; repository: 'github://pillar-markup/Microdown:dev/src'; ignoreImage; onConflictUseIncoming; onWarning: [:ex | ex load]; load"
