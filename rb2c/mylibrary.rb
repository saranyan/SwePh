# mylibrary.rb
TESTVAR = 2
module MyLibrary
  extend FFI::Library
  ffi_lib "mylibrary.so"
  attach_function :calculate_something, [:int, :float], :double
  attach_function :test_function_1, [:string], :string
  attach_function :test_function_2, [:double, :pointer, :string], :int
  attach_function :test_function_3, [], :void
  attach_function :test_function_4, [:pointer], :void
end
