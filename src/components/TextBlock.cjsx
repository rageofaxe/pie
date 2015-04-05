TextBlock = React.createClass
  render: ->
    <div>
      <PlainEditable className="PTE" noTrim/>
      <button onClick={@props.next}>Гатова</button>
    </div>
