#! /usr/bin python
#coding:utf-8

print "请输入任意一个整数数字:"

number = int(raw_input())

if number == 10:
	print "你输入的数字是:%d equal"%number
elif number < 10:
	print "你输入的数字是:%d too small"%number
elif number > 10:
	print "你输入的数字是:%d too big"%number
else:
	print "Are you a human?"

