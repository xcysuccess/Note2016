#python学习笔记

### 一. Python数据类型和基本运算
查看python版本号:`python --version`
简单的几个方法:  
	
##### 1. type(object)
来检测是什么类型
==> eg:type(4)输出 <type 'int'>
##### 2. abs(10)
##### 3. 四舍五入:   
	round(1.234) -> 1.0  
	round(1.234,1)-> 1.2
##### 4. help
	help(round)->可以找到帮助信息
##### 5. 没啥多说的 / %  
	divmod(5,2) #表示5除以2,返回商和余数 -> (2,1)  
		        
### 二. 函数
##### 1. 定义一个方法   

	#coding:utf-8
	def add_function(a,b):
		c = a+b
		print c
	
	if __name__=="__main__":
		add_function(2,3)

### 三. 字符串
##### 1. 连接字符串
	
	b = "free"
	a = 1989
	print b+`a`
	
	结果: free1989
	
	>>> print b+str(a)
	hello world19899
	>>> print b+repr(a)
	hello world19899
str:对象类型  
repr:是函数

##### 2. 输出
	
	>>> print "one is %d" %123456
	one is 123456	
第二个％号代表％d对应的变量的值

##### 3. 字符串输出%s
	
	>>> a = "py"
	>>> b = "thon"
	>>> print "%s%s"(a,b)

##### 4. 字符串复制
	
	>>> b=a
	>>> print b
	py
	
##### 5. 长度
	
	>>> a = "hello tom xiang"
	>>> len(a)
	15
	
##### 6. 大小写问题
	
	>>> a = "tomxiang"
	>>> a.upper()
	'TOMXIANG'
	>>> a.lower()
	'tomxiang'
	>>> a.capitalize() //首字母大写
	'Tomxiang'
	>>> a.istitle()    //是否首字母大写，其他都是小写
	False
	>>> a.isupper()
	False
	>>> a.islower()
	True

##### 7. 获取字符
	>>> a = "Hello,wor ld"
	>>> a[24]
	Traceback (most recent call last):
	  File "<stdin>", line 1, in <module>
	IndexError: string index out of range
	>>> a[12]
	Traceback (most recent call last):
	  File "<stdin>", line 1, in <module>
	IndexError: string index out of range
	>>> a[11]
	'd'
	>>> a[-12]
	'H'
	>>> a[1]
	'e'
	>>> a[0]
	'H'

##### 8. 字符串截取
	
	>>> a[0:3]
	'Hel'
	
	>>> a="tomxiang"
	>>> a[:]
	'tomxiang'
	>>> a[3:]
	'xiang'
	>>> a[:4]
	'tomx'

##### 9. 去掉字符串两头的空格
	
	