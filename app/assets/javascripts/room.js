document.addEventListener('turbolinks:load', function () {
  const openRoomButton = document.getElementById('new-room-button')
  const roomPopover = document.getElementById('new-room-popover')

  if (openRoomButton && roomPopover) {

    openRoomButton.addEventListener('click', function () {

      return roomPopover.classList.contains('is-hidden') ?
      roomPopover.classList.remove('is-hidden') : null
    }, false)

    const cancelRoomPopover = document.getElementById('cancel-room-popover')
    cancelRoomPopover.addEventListener('click', function () {

      return roomPopover.classList.add('is-hidden')
    }, false)
  }
})


roomForm.addEventListener('ajax:error', function (xhr, status, err) {
  console.log(xhr)

  roomTitle.classList.add('is-invalid')

  var errorNode = document.createElement('div')
  var errorTextNode = document.createTextNode('Name cannot be blank')
  errorNode.classList.add('invalid-feedback')
  errorNode.appendChild(errorTextNode)

  roomTitle.parentNode.insertBefore(errorNode, roomTitle.nextSibling)
})
