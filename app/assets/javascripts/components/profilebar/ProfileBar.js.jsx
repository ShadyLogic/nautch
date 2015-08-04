var ProfileBar = React.createClass({
  render: function(){
    return(
      <div className="pos-r f-l w-200 ta-c">
        <ProfileImage profile_url={this.props.user.profile_image_url}/>
        <ProfileName username={this.props.user.username} />
        <ProfileInfo age={this.props.age} user={this.props.user} />
      </div>
    );
  }
});
