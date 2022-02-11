import React, {Component} from 'react';
import {
  AppRegistry,
  StyleSheet,
  Alert,
  Text,
  View,
  NativeModules,
  TouchableHighlight,
} from 'react-native';

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.done = false;
  }

  _changeView() {
    this.done = true;
    this.render();
    NativeModules.ChangeViewBridge.changeToNativeView();
  }

  render() {
    if (!this.done) {
      return (
        <View style={styles.container}>
          <TouchableHighlight onPress={() => this._changeView()}>
            <Text color="#336699">Go to camera view</Text>
          </TouchableHighlight>
        </View>
      );
    } else {
      return <View></View>;
    }
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
});
