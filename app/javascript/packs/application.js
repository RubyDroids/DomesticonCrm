import '../stylesheets/application';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

// https://github.com/CodeSeven/toastr
global.toastr = require("toastr")

import "controllers"