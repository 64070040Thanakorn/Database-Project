module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('flowbite')
  ],
  content: [
    "./node_modules/flowbite.{js,ts}"
  ],
}
