# String and Symbol in Ruby

## String

```rb
"Apple".class
-> String
```

## Symbol

```rb
:Apple.class
-> Symbol
```

## Convertion

```rb
"Apple".to_sym
-> :Apple

:Apple.to_s
-> "Apple"
```

## When to use symbol

To define a hash (using Symbol as a key instead of String)

```rb
Host = {
  :Tokyo => 'place1'
  :Osaka => 'place2'
}
```

# Include and Extend

## To be continued