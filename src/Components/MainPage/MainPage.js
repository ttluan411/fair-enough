import React, {Component} from 'react';
import {Route} from 'react-router-dom';
import { connect } from 'react-redux';
import { getUser } from '../../ducks/reducer';
import './MainPage.css';

class MainPage extends Component {

    render(){

      const {
        user
      } = this.props
        return (
            <div className="mainpage-wrapper">
                <div className="mainpage-header">
                    <div className="mainpage-logo">F A I R E N O U G H</div>
                    <div className="balance-bar">
                        <div className="small-box">
                            <div className="top-letters">You owe:</div>
                            <div className="bottom-letters">$0</div>
                        </div>
                        <div className="small-box middle">
                            <div className="top-letters">You are owed:</div>
                            <div className="bottom-letters">$0</div>
                        </div>
                        <div className="small-box">
                            <div className="top-letters">Balance:</div>
                            <div className="bottom-letters">$0</div>
                        </div>
                    </div>
                </div>
                <div className="mainpage-body">
                  <div>{this.props.user}</div>
                </div>
                <div className="mainpage-footer">
                    <button className="add-button"></button>
                </div>
            </div>
        )
    }
}
export default connect((state) => {
  return state;
},{getUser})(MainPage);
