// postcss.config.js
module.exports = {
  plugins: [
    // if you are using non default config filename
    require("tailwindcss")("tailwind.config.js"),
    require('postcss-import'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}
