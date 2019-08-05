import React, { Component } from 'react';
import { AppRegistry, FlatList, StyleSheet, Text, View, Image, Alert, Platform, TouchableHighLight, RefreshControl, TextInput } from 'react-native';

import { ADD_NEW_TASK } from '../actions';

export default class AddComponent extends Component {
  constructor(props){
    super(props);
    this.state ={{
      newTaskName:''
    }}
  }
  render(){
    return(
      <View style={{
        backgroundColor: 'tomato',
        flexDirection: 'row',
        justifyContent: 'flex-end',
        alignItems: 'center',
        height: 64
      }}>
      <TextInput style={{
        height: 40,
        width: 200,
        margin: 10,
        padding: 10,
        borderColor: 'white',
        borderWidth: 1,
        color: 'white'
      }}
        keyboardType='default',
        placeholderTextColor='white',
        placeholder='Enter task name',
        autoCapitalize='none',
        onChangeText={
          (text) => {
            this.setState{{newTaskName:text}};
          }
        }/>
      <TouchableHighLight
        style={{marginRight:10}}
        underlayColor='blue',
        onPress={(event)} =>{
          if (!this.state.newTaskName.trim()) {
            return; 
          }
          //call click event =>use 'Containter' 
        
        }
      >
        <Image
          style={{width:35, height:35}}
          source={require('../icons/icons-add.png')}
      />
      </TouchableHighLight>
      </View>
    ); 
  }
}