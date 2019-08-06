import React from 'react';
import { createBottomTabNavigator, 
         createStackNavigator } from 'react-navigation';
import { CatalogueScreen, 
         CategoryScreen, 
         ProductScreen,  
         SearchScreen,
         SearchResultsScreen,
         BagScreen } from './MyScreens';
import Ionicons from 'react-native-vector-icons/Ionicons';


export default class MyApp extends React.Component {
   render() {
      return(<AppTabNavigator />);
   }
}

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
       tabBarIcon: ({ focused, tintColor }) => {
      const { routeName } = navigation.state;
      
      let icon;
      switch(routeName) {
         case 'Catalogue':
            icon = `ios-shop${focused ? '' : '-outline'}`;
          break;
          case 'Search':
            icon = `ios-search${focused ? '' : '-outline'}`;
          break;
          case 'Bag':
icon = `ios-appstore${focused ? '' : '-outline'}`;
          break;
        }
        
        return <Ionicons 
                 name={icon} 
                 size={25} 
                 color={tintColor} />;
       },
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