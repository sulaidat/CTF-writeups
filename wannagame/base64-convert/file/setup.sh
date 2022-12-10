#!/bin/bash
docker build -t ctf:base64-convert .
docker run --rm --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -p 13337:13337 -d --name base64-convert -i ctf:base64-convert
