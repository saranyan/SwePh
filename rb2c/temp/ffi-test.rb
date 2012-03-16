require 'ffi'

module GetPid
  extend FFI::Library
  attach_function :getpid, [], :uint
end

puts GetPid.getpid
