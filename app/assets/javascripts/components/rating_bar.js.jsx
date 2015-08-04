var RatingBar = React.createClass({

  propTypes: {
    rater_id: React.PropTypes.node,
    target_id: React.PropTypes.node,
    score: React.PropTypes.node
  },

  render: function() {
    var width = this.props.score / 50 * 400
    var style = {
      width: width + "px"
    }
    return (
      <div>
        <div style={style} className="pos-r m-a h-75" id="five_stars"></div>
        <h3 className="pos-r l-neg90 ta-c">Score: {this.props.score / 10}</h3>
      </div>
    );
  }
});
