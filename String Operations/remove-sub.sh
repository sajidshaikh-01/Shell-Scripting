#!/bin/bash
path="/home/sajid/projects/devops"
echo ${path#/home/sajid/}    # Remove from start
echo ${path%/devops}         # Remove from end
