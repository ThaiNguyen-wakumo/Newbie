# Block, Proc and Lambda

## Block

* Block are enclosed in do/end statement or in brackets {}

And they have multiple arguments *

```
[1,2,3].each { |x| puts x}
```

```
[1,2,3].each do |x|
  puts x
end
```

* Block is not an object *

### Yield Keyword

* It's a keyword that allows you to call a given block

When you use the yield keyword, the code inside block will run *

```
def print
  yield
end

print { puts "Block is not an object" }
```

## Lambda

* Lambda is a way to define a block *

```
say = -> { puts "This is a lambda"}
say.call
```

* Many ways to call a lambda *

```
say.call
say.()
say[]
say.===
```

