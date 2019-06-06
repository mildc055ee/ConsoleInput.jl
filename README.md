## Input.jl
[![Build Status](https://travis-ci.com/mildc055ee/Input.jl.svg?branch=master)](https://travis-ci.com/mildc055ee/Input.jl)
[![codecov](https://codecov.io/gh/mildc055ee/Input.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/mildc055ee/Input.jl)
  
minimal stdin wrapper for julia

### readInt
```julia
readInt() #<-- 1
#--> 1

readInt() #<-- 1 2 3 4 5
#--> [1, 2, 3, 4, 5]
```

### readString
```julia
readString() #<-- Lorem
#--> "Lorem"

readString() #<-- Lorem ipsum es
#-->["Lorem", "ipsum", "es"]
```
