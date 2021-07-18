import React from 'react';
import './App.css';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";

// components
import { Shops } from './containers/Shops.jsx';
import { Photos } from './containers/Photos.jsx';
import { Orders } from './containers/Orders.jsx';

function App() {
  return (
    <Router>
      <Switch>
        // photo一覧ページ
        <Route
          exact
          path="/shops">
          <Shops />
        </Route>

        // 注文ページ
        <Route
          exact
          path="/orders">
          <Orders />
        </Route>
        <Route
          exact
          path="/shops/:shopsId/photos"
          render={({ match }) =>
            <Photos
              match={match}
            />
          }
        />
      </Switch>
    </Router>
  );
}

export default App;
