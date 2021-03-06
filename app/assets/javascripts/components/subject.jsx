class Subject extends React.Component {
  constructor (props) {
    super(props);

    this.state = {
      subject: this.props.params
    };
}
  render() {
    const {subject} = this.state
    return (
       <div className="col-md-12 subject-row">
         <span className='title'>
           <a href={`/subjects/${subject.id}`}>{subject.title}</a>
         </span>
         <span className='creator'>{subject.user_full_name}</span>
         <span className='replies'>{subject.replies_count}</span>
         <span className='views'>{subject.view_count}</span>
         <span className='last-update'>{subject.latest_date}</span>
         <div className="col-md-12 line"><hr/></div>
     </div>
    )

  }
}
