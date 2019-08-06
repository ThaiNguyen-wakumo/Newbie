# React Native part 5 - Navigation

## Install 

```
yarn add react-navigation
```

## Navigation prop

```js
const { navigation } = this.props;
onPress={() => 
    navigation.navigate('NavigatorScreen', 
                        { additionalData: 'supported!',
                          productId: 123 })
}
```

## App.js

```js
import React from 'react';
import { createBottomTabNavigator, 
         createStackNavigator } from 'react-navigation';
...
export default class MyApp extends React.Component {
   render() {
      return(<AppTabNavigator />);
   }
}
//configure navigators...
```

## Navigator

```js
import { CatalogueScreen, 
         CategoryScreen, 
         ProductScreen,  
         SearchScreen,
         SearchResultsScreen,
         BagScreen } from './MyScreens';

const CatalogueNavigator = createStackNavigator({
   Catalogue: CatalogueScreen,
    Category: CategoryScreen,
     Product: ProductScreen
}, {
    //configuration options...
});
const SearchNavigator = createStackNavigator({
      SearchHome: SearchScreen,
   SearchResults: SearchResultsScreen
}, {
    //configuration options...
});
const AppTabNavigator = createBottomTabNavigator({
   Catalogue: CatalogueNavigator,
      Search: SearchNavigator,
         Bag: BagScreen,
   },{
   
     navigationOptions: ({ navigation }) => ({
        //define the icon for each tab here...
     }),
     tabBarOptions: {
       initialRouteName: 'Catalogue',
       activeTintColor: '#fff',
       inactiveTintColor: '#ddd',
       style: {
         backgroundColor: '#4d535e',
      }
   }
});
```