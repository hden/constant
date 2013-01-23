#Constant.coffee
A constant helper using accessor method via Object.defineProperty

Usage
----------

```coffee-script
k = require '../src/index'

k.define 'foo', 'bar'
console.log k.foo
# bar

k.foo = '' # trying to override foo
console.log k.foo
# bar

k.define 'foo', '' # trying duplicate declaration of foo
# Throws an error

k.throwsError = true
k.foo = '' # Throws an error
```

Requirement
----------
[![browser support](http://ci.testling.com/haokang-den/constant.png)](http://ci.testling.com/haokang-den/constant)

TO-DO
----------
* Add namespace management

Licence: MIT