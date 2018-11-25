import PropTypes from 'prop-types';
import React from 'react';
import { Button } from 'semantic-ui-react';

export default class HelloWorld extends React.Component {
  static propTypes = {
    name: PropTypes.string.isRequired, // this is passed from the Rails view
  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);

    // How to set initial state in ES6 class syntax
    // https://reactjs.org/docs/state-and-lifecycle.html#adding-local-state-to-a-class
    this.state = {
      name: this.props.name,
      task: this.props.task
    };
  }

  updateName = (name) => {
    this.setState({ name });
  };
  handleLogin = () => {
    console.log('handleLogin');
    const data = {
        params: 'params'
    }

    fetch('http://localhost:3000/test_url', {
        method: 'get',
        headers: {
            'Access-Control-Allow-Origin':'*',
            'Content-type': 'application/json'
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(response => {
            console.log(response);
        })
  }
  render() {
    return (
      <div>
        <h3>
          Hello, {this.state.name}!
        </h3>
        <p>SUM: {this.state.task.summ}</p>
        <hr />
        <form >
          <label htmlFor="name">
            Hello:
          </label>
          <Button onClick={this.handleLogin}>Click Here</Button>
          <input
            id="name"
            type="text"
            value={this.state.name}
            onChange={(e) => this.updateName(e.target.value)}
          />
        </form>
      </div>
    );
  }
}
