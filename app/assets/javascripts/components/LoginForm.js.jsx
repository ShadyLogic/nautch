var LoginForm = React.createClass({
  render: function(){
    return(
      <form className="pos-r ta-c m-a t-220" action="/users/login" method="POST">
        <input type="text" name="username" placeholder="Username" /><br/>
        <input type="password" name="password" placeholder="Password" /><br/>
        <input type="submit" value="Login" />
      </form>
    );
  }
});
