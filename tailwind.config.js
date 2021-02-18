// tailwind.config.js
const colors = require('tailwindcss/colors')

module.exports = {
  purge: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './src/**/*.html',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
    colors: {
      gray: colors.blueGray,
      green: colors.emerald,
      black: colors.black,
      white: colors.white,
      indigo: colors.indigo,
      red: colors.rose,
      pink: colors.pink,
      purple: colors.violet,
      yellow: colors.amber,
      teal: colors.teal,
      cyan: colors.cyan,
      transparent: 'transparent'
    }
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/aspect-ratio')
  ],
}
