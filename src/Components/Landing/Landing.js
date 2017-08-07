import React, {Component} from 'react';
import { Route } from 'react-router-dom';
import './Landing.css';

export default function Landing(props){
    return (
        <div className="landing-wrapper">
            <div className="header">F A I R E N O U G H</div>
            <div className="logobox">
                <div className="logo">
                    <img src="./Money-Icon.png" alt="logo"/>
                </div>
            </div>
            <div className="account">
                <button className="log-in"> 
                    SIGN IN
                    {/*<div className="arrow-button"><img src="./a.png" alt="arrow"/></div>*/}
                </button>
                <button className="log-in"> 
                    NEW ACCOUNT
                    {/*<div className="arrow-button"><img src="./a.png" alt="arrow"/></div>                    */}
                </button>
            </div>
        </div>
    )    
}
    