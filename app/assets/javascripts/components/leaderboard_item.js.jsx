var LeaderboardItem = React.createClass({
  propTypes: {
    name: React.PropTypes.node,
    id: React.PropTypes.node,
    score: React.PropTypes.node,
    avatarUrl: React.PropTypes.node
  },

  render: function() {
    var width = this.props.score / 50 * 200
    var style = {
      width: width + "px",
      backgroundSize: 200
    }
    return (
      <div className="pos-r m-a ta-c t-neg10">
        <h3 className="pos-r t-65 l-50"><a href={"/users/" + this.props.id} >{this.props.name}</a></h3>
        <img className="w-100 d-ib" src={this.props.avatar_url}/>
        <div style={style} className="pos-r m-a h-37 d-ib" id="five_stars"></div>
      </div>
    );


    return (
      <div>
        
        <h3 className="pos-r l-neg90 ta-c">Score: {this.props.score / 10}</h3>
      </div>
    );
  }
});
