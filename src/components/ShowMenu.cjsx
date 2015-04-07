ShowMenu = React.createClass
  getInitialState: -> isVisibleMenu: false

  componentWillMount: -> window.addEventListener("click", @state.clickOutside, true)

  componentWillUnmount: -> window.removeEventListener("click", @state.clickOutside, true)

  clickOutside: -> if(@state.isVisibleMenu) then @setState()

  render: ->
    <div className="menu" style={{display: if(@state.isVisibleMenu) then 'block' else 'none'}}></div>
