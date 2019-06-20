# Block, Proc and Lambda

## Block

_Block are enclosed in +do/end+ statement or in +brackets+ {} and they have +multiple arguments+_

```
[1,2,3].each { |x| puts x}
```

```
[1,2,3].each do |x|
  puts x
end
```

_Block is not an object_

### Yield Keyword

_It's a keyword that allows you to call a given block
When you use the +YIELD+ keyword, the code inside block will run_

```
def print
  yield
end

print { puts "Block is not an object" }
```

## Lambda

_Lambda is a way to define a block_

```
say = -> { puts "This is a lambda"}
say.call
```

_Many ways to call a lambda_

```
say.call
say.()
say[]
say.===
```

