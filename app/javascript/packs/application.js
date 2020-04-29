require("@rails/ujs").start()
var Turbolinks = require("turbolinks")
Turbolinks.start()
require("jquery")
require("channels")

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

import 'bootstrap'
import '../src/application.scss'
import "controllers"
