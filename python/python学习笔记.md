#python入门30分钟

### 一. Python数据类型和基本运算
查看python版本号:`python --version`
简单的几个方法:  
	
##### 1. type(object)
来检测是什么类型
==> eg:type(4)输出 <type 'int'>
##### 2. abs(10)
##### 3. 四舍五入: 

```python  
round(1.234) -> 1.0  
round(1.234,1)-> 1.2
```

##### 4. help
	help(round)->可以找到帮助信息
##### 5. 没啥多说的 / %  
	divmod(5,2) #表示5除以2,返回商和余数 -> (2,1)  
		        
### 二. 函数
##### 1. 定义一个方法   

```python
#coding:utf-8
def add_function(a,b):
	c = a+b
	print c
	
if __name__=="__main__":
	add_function(2,3)
```

### 三. 字符串

##### 1. 连接字符串

```python	
b = "free"
a = 1989
print b+`a`
	
结果: free1989
	
>>> print b+str(a)
hello world19899
>>> print b+repr(a)
hello world19899
```

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

```python	
>>> b=a
>>> print b
py
```

##### 5. 长度

```python
>>> a = "hello tom xiang"
>>> len(a)
15
```
	
##### 6. 大小写问题

```python
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
```

##### 7. 获取字符

```python
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
```

##### 8. 字符串截取

```python
>>> a[0:3]
'Hel'
	
>>> a="tomxiang"
>>> a[:]
'tomxiang'
>>> a[3:]
'xiang'
>>> a[:4]
'tomx'
```

##### 9. 去掉字符串两头的空格

```python	
>>> b=" Hello   "
>>> b
' Hello   '
>>> b.strip()
'Hello'
>>> b.lstrip()
'Hello   '
>>> b.rstrip()
' Hello'
```

##### 10. 输入字符串

```python
#coding:utf-8
print "please write your name:"
name = raw_input()
print "Hello,%s"%name

XiangChenyudeMacBook-Pro% python 4.py
please write your name:
tomxiang
Hello,tomxiang
```

### 四. 条件语句

```python
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
```

### 五. bool

```python
>>> a = 0
>>> a = bool(a)
>>> a
False
>>> a = -1
>>> a = bool(a)
>>> a
True
>>> a = -1.0
>>> bool(a)
True
>>> b =""
>>> bool(b)
False
```

### 六. list 
list:在python中翻译为列表（有其他语言基础的可理解为数组)   

```python
￼>>> help(list)  #查看list的使用方法
```

##### 1. 定义一个数组

```python
>>> a = []
>>> type(a)
<type 'list'>
```

##### 2. 内容个数bool
如果a无内容，bool(a)是False,否则是True  

```python
>>> a = []
>>> type(a)
<type 'list'>
>>> bool(a)
False
```
##### 3. 赋值应用

```python
>>> a = ['2','3','www.iosxxx.com']
>>> print a
['2', '3', 'www.iosxxx.com']
>>> type(a)
<type 'list'>
>>> bool(a)
True
```

##### 4. 索引

```python
>>> url = "www.iosxxx.com"
>>> url[2]
'w'
>>> url[1:3]
'ww'
>>> url[3:5]
'.i'
>>> url[1:]
'ww.iosxxx.com'
>>> url[-1]  #表示从右侧开始数
'm'
```

##### 5. append/len/extend
append：追加元素  
len：元素个数  
extend：合并  

```python
>>> a[:]
['2', '3', 'www.iosxxx.com']
>>> a.append("binbin")
>>> a
['2', '3', 'www.iosxxx.com', 'binbin']

>>> len(a)
4

>>> a = ["1","2"]
>>> b = ["3","4"]
>>> a.extend(b)
>>> a
['1', '2', '3', '4']
```
注意：基本类型的数据不可被直接`extend`，str数据类型的数据在做extend的时候系统做了分割字符串的处理，例如:

```python
>>> a = [1,2,3]
>>> b = [4,5,6]
>>> a.extend(b)
>>> a
[1, 2, 3, 4, 5, 6]
>>> c = 5
>>> a.extend(c)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: 'int' object is not iterable
>>> d = [5]
>>> a.extend(d)
>>> a
[1, 2, 3, 4, 5, 6, 5]
>>> c = "tomxiang"
>>> a.extend(c)
>>> a
[1, 2, 3, 4, 5, 6, 5, 't', 'o', 'm', 'x', 'i', 'a', 'n', 'g']
```

##### 6. count
list内某元素的个数  

```python
>>> a
[1, 2, 3, 4, 5, 6, 5, 't', 'o', 'm', 'x', 'i', 'a', 'n', 'g']
>>> a.count('a')
1
>>> a.count(5)
2
>>> a[2:5]
[3, 4, 5]
```

##### 7. index
查找元素编号

```python
>>> a.index('g')
14
```

##### 8. insert(i,x)

```python
>>> a = [1,2,3]
>>> a.insert(0,5)
>>> a
[5, 1, 2, 3]
```

##### 9. remove/pop
remove删除,pop删除最后一个元素并返回，pop也可以指定 

```python
>>> a
[5, 1, 2, 3]
>>> a.remove(5)
>>> a
[1, 2, 3]
>>> b = a.pop()
>>> a
[1, 2]
>>> b
3

>>> a = [5, 1, 2, 3]
>>> a.pop(2)
2
>>> a
[5, 1, 3]
```

##### 10. in
元素是否在数组中

```python
>>> a = [1,2,3,4,5]
>>> 3 in a
True
>>> 6 in a
False
```

##### 11. range(start,stop)
range(start,stop):表示起始位置，结束位置，默认step是1
range(start,stop,step):指定step
range(end):默认从0开始

```python
>>> range(9)
[0, 1, 2, 3, 4, 5, 6, 7, 8]
>>> range(1,9)
[1, 2, 3, 4, 5, 6, 7, 8]
>>> range(0,9,1)
[0, 1, 2, 3, 4, 5, 6, 7, 8]
>>> range(0,9,2)
[0, 2, 4, 6, 8]
>>> range(-1,9,2)
[-1, 1, 3, 5, 7]

>>> range(-9)
[]
>>> range(0,-9,-1)
[0, -1, -2, -3, -4, -5, -6, -7, -8]
>>>
```

##### 12. sort排序
两种方法:  
1.list.sort(cmp=None, key=None, reverse=False)   
2.sorted(iterable[, cmp[, key[, reverse]]]):有返回值  

从小到大:  

```python
>>> number =[1,3,5,2,9,7,3]
>>> number.sort()
>>> number
[1, 2, 3, 3, 5, 7, 9]
>>> number =[1,3,5,2,9,7,3]
>>> sorted(number)
[1, 2, 3, 3, 5, 7, 9]
>>> b = sorted(number)
>>> b
>>> [1, 2, 3, 3, 5, 7, 9]
```

从大到小:  

```python
>>> number =[1,3,5,2,9,7,3]
>>> number.sort(reverse=True)
>>> number
[9, 7, 5, 3, 3, 2, 1]
>>> number =[1,3,5,2,9,7,3]
>>> sorted(number,reverse=True)
[9, 7, 5, 3, 3, 2, 1]
```

### 七. list和str比较
list：可变,且可以是多维的，比如二维数组  
str：不可变,单一  

#####1. str转换成list: split
a.split(',',count),count指定转几个符号,具体可查询`help(str.split)  `

```python
>>> a = "tomxiang,hello,world,binbin"
>>> a.split(',')
['tomxiang', 'hello', 'world', 'binbin']

>>> a.split(',',2)
['tomxiang', 'hello', 'world,binbin']
>>> a.split(',',1)
['tomxiang', 'hello,world,binbin']
```  

**split()**  
如果split()不输入任何参数,显示就是见到任何分割符号,就用其分割了  

```python
>>> s = "I am, writing\npython\tbook on line"
>>> print s
I am, writing
python	book on line
>>> s.split()
['I', 'am,', 'writing', 'python', 'book', 'on', 'line']
```
#####2. list转换成str: "[sep]".join(list)

```python
>>> name = ["Aerbeisi","Mountain"]
>>> "".join(name)
'AerbeisiMountain'
>>> ",".join(name)
'Aerbeisi,Mountain'
```

**split()**  

```python
>>> s = "I am, writing\npython\tbook on line">>> print sI am, writingpython  book on line>>> s.split()['I', 'am,', 'writing', 'python', 'book', 'on', 'line']

>>> " ".join((s[0:4] + s[5:]).split())
'I am writing python book on line'
```