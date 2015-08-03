var RegisterForm = React.createClass({
  render: function(){
    return(
      <div className="pos-r ta-c m-a t-220">
        <form action="/users" method="POST">
          <label htmlFor="username">Username</label>
          <input type="text" name="username" placeholder="Username" /><br/>
          <label htmlFor="password">Password</label>
          <input type="password" name="password" placeholder="Password" /><br/>
          <label htmlFor="email">Email</label>
          <input type="text" name="email" placeholder="Email" /><br/>
          <label htmlFor="birthday">Birthday</label>
          <input type="date" name="birthday" placeholder="Birthday" /><br/>
          <input type="submit" value="Register" />
        </form>
      </div>
    );
  }
});
