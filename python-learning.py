#!/usr/bin/env python



## print

print('\nHello World!')
print('1 * 9 + 1 =', 1 * 9 + 1)

print('please input something: ')
_str = input()
print('output', _str)

print('I\'m learning Python.\n\n')

## end print



## data type

print('Judge the data type:\n')
_varied_type_data = (None, [True, False], {1, 2, 3}, {1: 'hello', 2: 'world'}, 88, 'ABC')
print(type(_varied_type_data))

for var in _varied_type_data:
    print('{:<30} ==> {}'.format(str(var), type(var)))

## end data_type



## encoding

print('\n\nEncoding transform:\n')
print(ord('A'))
print(ord('汉'))
print(chr(65))
print(chr(ord('汉')))

print('ABC'.encode('ascii'))
print('中文'.encode('utf-8'))

print(b'ABC'.decode('ascii'))
print('中文'.encode('utf-8').decode('utf-8'))

## encoding
