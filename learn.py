#!/usr/bin/env python



## print

print('Hello World!')
print('1 * 9 + 1 =', 1 * 9 + 1)

print('please input something: ')
_str = input()
print('output', _str)

print('I\'m learning Python.\n')

## end print



## data type

_varied_type_data = (None, [True, False], {1, 2, 3}, {1: 'hello', 2: 'world'}, 88, 'ABC')
print(type(_varied_type_data))

for var in _varied_type_data:
    print('{:<30} ==> {}'.format(str(var), type(var)))

## end data_type




