# Block, Proc and Lambda

## Block

_Block are enclosed in a bracket or in do/end statement_

```rb
[1,2,3].each { |x| puts x}
```

```rb
[1,2,3].each do |x|
  puts x
end
```

*Note*: _Block is not an object_

### Yield Keyword

_It's a keyword that allows you to call a given block_

```rb
def print
  yield
end

print { puts "Block is not an object" }
```

## Lambda

_Lambda is a way to define a block_

```rb
say = -> { puts "This is a lambda"}
say.call
```

_Many ways to call a lambda_

```rb
say.call
say.()
say[]
say.===
```
## Proc

_Proc is the same similar concept as Lambda_

*Note*: _Here is a summary of how Lambda and Proc is different_

| Difference             | Lambda               | Block              |
| -----------------------|----------------------|--------------------|
| Defined                | -> {}                | Proc.new()         |
| Return                 | from lambda itself   | from current method|

