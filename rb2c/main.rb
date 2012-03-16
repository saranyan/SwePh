require 'ffi'
require './mylibrary.rb'

objptr = FFI::MemoryPointer.new(:double).put_double(0, 10.0)
p objptr.get_double(0)
dd = FFI::MemoryPointer.new(:double,4, true)


c = MyLibrary.calculate_something(TESTVAR, 98.6) # note FFI handles literals just fine
d = MyLibrary.test_function_1("hello world")
e = MyLibrary.test_function_2(10.0,objptr,"hello")
MyLibrary.test_function_3
MyLibrary.test_function_4(dd)
puts "tf0 - #{c}"
puts "tf1 - #{d}"
puts "tf2 - #{e}"
arr = dd.get_array_of_double(0, 3)
puts "tf4 - #{arr}"
