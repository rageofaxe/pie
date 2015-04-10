Menu = React.createClass
  getInitialState: -> isVisibleMenu: false

  #clickOutside: -> if(@state.isVisibleMenu) then @setState(isVisibleMenu: false);console.log('123');

  toggleMenu: -> @setState(isVisibleMenu: !@state.isVisibleMenu)

  #componentWillMount: -> window.addEventListener("click", @clickOutside, true)

  #componentWillUnmount: -> window.removeEventListener("click", @clickOutside, true)

  showMenu: (e) ->
    if((e.keyCode is 77 or e.keyCode is 109)) then @toggleMenu()

  componentDidMount: ->
    document.addEventListener("keypress", @showMenu)

  render: ->
    <div>
      <div className="hamburger menu-icon" onClick={@toggleMenu}></div>
      <div className="menu" style={{display: if(@state.isVisibleMenu) then 'block' else 'none'}}>
        <a href="#" className="close-icon" onClick={@toggleMenu}></a>
      </div>
    </div>
