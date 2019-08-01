# Animation summarization 

```js
//This file is used to summarize the function of animation
```

## Configuring animation

```js
Animated.timing(this.state.xPosition, {
  toValue: 100,
  easing: Easing.back(),
  duration: 2000,
}).start();
```

## Composing animation

```js
Animated.sequence([
  // decay, then spring to start and twirl
  Animated.decay(position, {
    // coast to a stop
    velocity: {x: gestureState.vx, y: gestureState.vy}, // velocity from gesture release
    deceleration: 0.997,
  }),
  Animated.parallel([
    // after decay, in parallel:
    Animated.spring(position, {
      toValue: {x: 0, y: 0}, // return to start
    }),
    Animated.timing(twirl, {
      // and twirl
      toValue: 360,
    }),
  ]),
]).start(); // start the sequence group
```

## Combining animated value

```js
const a = new Animated.Value(1);
const b = Animated.divide(1, a);

Animated.spring(a, {
  toValue: 2,
}).start();
```

## Interpolation

```js 
value.interpolate({
  inputRange: [0, 1],
  outputRange: [0, 100],
});
```

## Native driver

```js  
Animated.timing(this.state.animatedValue, {
  toValue: 1,
  duration: 500,
  useNativeDriver: true, // <-- Add this
}).start();
```

## Rotate 

```js 
<Animated.View
  style={{
    transform: [
      {scale: this.state.scale},
      {rotateY: this.state.rotateY},
      {perspective: 1000}, // without this line this Animation will not render on Android while working fine on iOS
    ],
  }
/>
```