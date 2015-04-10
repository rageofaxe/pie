TextBlock = React.createClass
  getInitialState: -> text: ""

  ctrlEnter: (event) ->
    if((event.ctrlKey) && ((event.keyCode == 0xA)||(event.keyCode == 0xD))) then @props.next()

  componentDidMount: ->
    document.addEventListener("keypress", @ctrlEnter)

  render: ->
    <div>
      <div contentEditable className="PlainEditable" onInput={@change} >
        {@state.text}
      </div>
      <div className="textblock__buttons">
        <button onClick={@props.next} style={{display: 'none'}}>Наступны</button>
        <button onClick={@props.next} style={{display: 'none'}}>Захаваць</button>
        <span className="skip-sentence" onClick={@props.next} title="(ctrl + ->)">Прапусціць</span>
        <span className="skip-sentence">, </span>
        <span className="save-sentence" onClick={@props.next} title="(ctrl + enter)" >Захаваць</span>
      </div>
    </div>
