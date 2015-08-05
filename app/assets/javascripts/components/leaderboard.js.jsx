var Leaderboard = React.createClass({
  propTypes: {
    top_users: React.PropTypes.node,
    bottom_users: React.PropTypes.node,
    active_users: React.PropTypes.node
  },

  render: function() {
    return (
      <div className="pos-r m-a ta-c t-220">
        <h4 className="pos-r t-42 l-30">Top Shags:</h4>
        {this.props.top_users.map(function(user) {
          return <LeaderboardItem key={user.object.id} id= {user.object.id} name={user.object.username} score={user.score} avatar_url={user.object.profile_image_url}/>;
        })}
      </div>
    );
  }
});
