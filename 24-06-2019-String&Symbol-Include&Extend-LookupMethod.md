# String and Symbol in Ruby

## String

```
"Apple".class
-> String
```

## Symbol

```
:Apple.class
-> Symbol
```

## Convertion

```
"Apple".to_sym
-> :Apple

:Apple.to_s
-> "Apple"
```

## When to use symbol

To define a hash (using Symbol as a key instead of String)

```
Host = {
  :Tokyo => 'place1'
  :Osaka => 'place2'
}
```

# Include and Extend

## To be continued