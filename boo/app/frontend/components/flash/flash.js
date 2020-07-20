import './flash.scss'
// Import static files here. For instance: import './static/logo.png'

const dismiss = flash => {
  flash.style.opacity = 0
  flash.remove()
}

export default () => {
  const flash = document.querySelector('.js-flash')
  if (flash) {
    flash.addEventListener('click', () => dismiss(flash))
    setTimeout(() => dismiss(flash), 3000)
  }
}
