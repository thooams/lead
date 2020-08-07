import Jquery from 'jquery'
import Rails from 'rails-ujs'
import 'config'
import "bootstrap/scss/bootstrap";
import '../static/background.jpg'
import '../static/1.png'
import '../static/2.png'
import '../static/3.png'
import '../static/4.png'
import '../static/user-default.png'
import '../static/post.jpg'
import manageFlash from 'components/flash/flash'
import 'components/banner/banner'
import 'components/button/button'
import 'components/header/header'
import 'components/campaign/campaign'
import 'components/wrapper/wrapper'
import 'components/avatar/avatar'
import "@fortawesome/fontawesome-free/js/all.js";
import "@fortawesome/fontawesome-free/css/all.css";
import 'popper.js'
import 'pages'
import CalHeatMap from 'cal-heatmap'
import 'cal-heatmap/cal-heatmap.css'
// END OF IMPORTS (DO NOT DELETE)

Rails.start()
manageFlash()

var dt = new Date(); // current date of week
var currentWeekDay = dt.getDay();
var lessDays = currentWeekDay == 0 ? 6 : currentWeekDay - 1;
var wkStart = new Date(new Date(dt).setDate(dt.getDate() - lessDays));
var wkEnd = new Date(new Date(wkStart).setDate(wkStart.getDate() + 6));


var cal = new CalHeatMap();
	cal.init({
    domain: "day",
    data: Jquery("#cal-heatmap").data().values,
    subDomain: "hour",
    rowLimit: 1,
    start: wkStart,
    domainLabelFormat: '%a',
    subdomainLabelFormat: '%h',
    end: wkEnd,
    domainGutter: 0,
    cellSize: 25,
    cellPadding: 5,
    range: 7,
    verticalOrientation: true,
    displayLegend: false,
    label: {
      position: "left",
      offset: {
        x: 20,
        y: 12
      },
      width: 110
    },
    legend: [1, 2, 3, 4],
    legendColors: ["#00ffff", "#ee7456"]
  });
