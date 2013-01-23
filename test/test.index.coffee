assert = require('chai').assert
k      = require '../src/index'

describe 'Constant', ->
  @timeout 100
  it 'should define constant', ->
    k.define 'foo', 'bar'
    assert.equal k.foo, 'bar'
    k.foo = ''
    assert.equal k.foo, 'bar'
  it 'should provide warning for overwriting constant', ->
    k.throwsError = true
    assert.throws (-> k.foo = ''), 'accessing constant'
  it 'should provide warning against duplicating keys', ->
    assert.throws (-> k.define 'foo', ''), 'already exists'