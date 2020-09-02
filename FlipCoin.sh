#!/bin/bash
randomCheck=$((RANDOM%2))
case $randomCheck in
		0)
			echo "Head"
		;;
		1)
			echo "Tail"
		;;
esac
