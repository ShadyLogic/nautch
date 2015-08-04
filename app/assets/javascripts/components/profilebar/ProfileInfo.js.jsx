var ProfileInfo = React.createClass({
  render: function(){
    return(
      <div className="pos-r ta-l l-neg15">
        <ul>
          <li>Name: <span className="f-r">{this.props.user.first_name} {this.props.user.last_name}</span></li>
          <li>Age: <span className="f-r">{this.props.age}</span></li>
          <li>Height: <span className="f-r">{this.props.user.height}</span></li>
          <li>Weight: <span className="f-r">{this.props.user.weight}</span></li>
          <li>Hair Color: <span className="f-r">{this.props.user.hair_color}</span></li>
          <li>Eye Color: <span className="f-r">{this.props.user.eye_color}</span></li>
          <li>Skin Color: <span className="f-r">{this.props.user.skin_color}</span></li>
          <li>Sign: <span className="f-r">{this.props.user.sign}</span></li>
        </ul>
      </div>
    );
  }
});
