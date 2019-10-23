(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[8],{

/***/ 391:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "default", function() { return DateTime; });
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(0);
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var moment__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(394);
/* harmony import */ var moment__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(moment__WEBPACK_IMPORTED_MODULE_1__);
function _typeof(obj) { if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

function _possibleConstructorReturn(self, call) { if (call && (_typeof(call) === "object" || typeof call === "function")) { return call; } return _assertThisInitialized(self); }

function _assertThisInitialized(self) { if (self === void 0) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return self; }

function _getPrototypeOf(o) { _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) { return o.__proto__ || Object.getPrototypeOf(o); }; return _getPrototypeOf(o); }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function"); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } }); if (superClass) _setPrototypeOf(subClass, superClass); }

function _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }




var DateTime =
/*#__PURE__*/
function (_React$Component) {
  _inherits(DateTime, _React$Component);

  function DateTime() {
    _classCallCheck(this, DateTime);

    return _possibleConstructorReturn(this, _getPrototypeOf(DateTime).apply(this, arguments));
  }

  _createClass(DateTime, [{
    key: "render",
    value: function render() {
      var y = this.props.value;
      var moment2 = moment__WEBPACK_IMPORTED_MODULE_1___default()(y);

      if (moment2.isValid) {
        return react__WEBPACK_IMPORTED_MODULE_0___default.a.createElement("span", null, moment2.format(this.props.dateTimeFormat));
      }

      return react__WEBPACK_IMPORTED_MODULE_0___default.a.createElement("span", null, y);
    }
  }]);

  return DateTime;
}(react__WEBPACK_IMPORTED_MODULE_0___default.a.Component);



/***/ }),

/***/ 515:
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"./af": 395,
	"./af.js": 395,
	"./ar": 396,
	"./ar-dz": 397,
	"./ar-dz.js": 397,
	"./ar-kw": 398,
	"./ar-kw.js": 398,
	"./ar-ly": 399,
	"./ar-ly.js": 399,
	"./ar-ma": 400,
	"./ar-ma.js": 400,
	"./ar-sa": 401,
	"./ar-sa.js": 401,
	"./ar-tn": 402,
	"./ar-tn.js": 402,
	"./ar.js": 396,
	"./az": 403,
	"./az.js": 403,
	"./be": 404,
	"./be.js": 404,
	"./bg": 405,
	"./bg.js": 405,
	"./bm": 406,
	"./bm.js": 406,
	"./bn": 407,
	"./bn.js": 407,
	"./bo": 408,
	"./bo.js": 408,
	"./br": 409,
	"./br.js": 409,
	"./bs": 410,
	"./bs.js": 410,
	"./ca": 411,
	"./ca.js": 411,
	"./cs": 412,
	"./cs.js": 412,
	"./cv": 413,
	"./cv.js": 413,
	"./cy": 414,
	"./cy.js": 414,
	"./da": 415,
	"./da.js": 415,
	"./de": 416,
	"./de-at": 417,
	"./de-at.js": 417,
	"./de-ch": 418,
	"./de-ch.js": 418,
	"./de.js": 416,
	"./dv": 419,
	"./dv.js": 419,
	"./el": 420,
	"./el.js": 420,
	"./en-au": 421,
	"./en-au.js": 421,
	"./en-ca": 422,
	"./en-ca.js": 422,
	"./en-gb": 423,
	"./en-gb.js": 423,
	"./en-ie": 424,
	"./en-ie.js": 424,
	"./en-nz": 425,
	"./en-nz.js": 425,
	"./eo": 426,
	"./eo.js": 426,
	"./es": 427,
	"./es-do": 428,
	"./es-do.js": 428,
	"./es-us": 429,
	"./es-us.js": 429,
	"./es.js": 427,
	"./et": 430,
	"./et.js": 430,
	"./eu": 431,
	"./eu.js": 431,
	"./fa": 432,
	"./fa.js": 432,
	"./fi": 433,
	"./fi.js": 433,
	"./fo": 434,
	"./fo.js": 434,
	"./fr": 435,
	"./fr-ca": 436,
	"./fr-ca.js": 436,
	"./fr-ch": 437,
	"./fr-ch.js": 437,
	"./fr.js": 435,
	"./fy": 438,
	"./fy.js": 438,
	"./gd": 439,
	"./gd.js": 439,
	"./gl": 440,
	"./gl.js": 440,
	"./gom-latn": 441,
	"./gom-latn.js": 441,
	"./gu": 442,
	"./gu.js": 442,
	"./he": 443,
	"./he.js": 443,
	"./hi": 444,
	"./hi.js": 444,
	"./hr": 445,
	"./hr.js": 445,
	"./hu": 446,
	"./hu.js": 446,
	"./hy-am": 447,
	"./hy-am.js": 447,
	"./id": 448,
	"./id.js": 448,
	"./is": 449,
	"./is.js": 449,
	"./it": 450,
	"./it.js": 450,
	"./ja": 451,
	"./ja.js": 451,
	"./jv": 452,
	"./jv.js": 452,
	"./ka": 453,
	"./ka.js": 453,
	"./kk": 454,
	"./kk.js": 454,
	"./km": 455,
	"./km.js": 455,
	"./kn": 456,
	"./kn.js": 456,
	"./ko": 457,
	"./ko.js": 457,
	"./ky": 458,
	"./ky.js": 458,
	"./lb": 459,
	"./lb.js": 459,
	"./lo": 460,
	"./lo.js": 460,
	"./lt": 461,
	"./lt.js": 461,
	"./lv": 462,
	"./lv.js": 462,
	"./me": 463,
	"./me.js": 463,
	"./mi": 464,
	"./mi.js": 464,
	"./mk": 465,
	"./mk.js": 465,
	"./ml": 466,
	"./ml.js": 466,
	"./mr": 467,
	"./mr.js": 467,
	"./ms": 468,
	"./ms-my": 469,
	"./ms-my.js": 469,
	"./ms.js": 468,
	"./my": 470,
	"./my.js": 470,
	"./nb": 471,
	"./nb.js": 471,
	"./ne": 472,
	"./ne.js": 472,
	"./nl": 473,
	"./nl-be": 474,
	"./nl-be.js": 474,
	"./nl.js": 473,
	"./nn": 475,
	"./nn.js": 475,
	"./pa-in": 476,
	"./pa-in.js": 476,
	"./pl": 477,
	"./pl.js": 477,
	"./pt": 478,
	"./pt-br": 479,
	"./pt-br.js": 479,
	"./pt.js": 478,
	"./ro": 480,
	"./ro.js": 480,
	"./ru": 481,
	"./ru.js": 481,
	"./sd": 482,
	"./sd.js": 482,
	"./se": 483,
	"./se.js": 483,
	"./si": 484,
	"./si.js": 484,
	"./sk": 485,
	"./sk.js": 485,
	"./sl": 486,
	"./sl.js": 486,
	"./sq": 487,
	"./sq.js": 487,
	"./sr": 488,
	"./sr-cyrl": 489,
	"./sr-cyrl.js": 489,
	"./sr.js": 488,
	"./ss": 490,
	"./ss.js": 490,
	"./sv": 491,
	"./sv.js": 491,
	"./sw": 492,
	"./sw.js": 492,
	"./ta": 493,
	"./ta.js": 493,
	"./te": 494,
	"./te.js": 494,
	"./tet": 495,
	"./tet.js": 495,
	"./th": 496,
	"./th.js": 496,
	"./tl-ph": 497,
	"./tl-ph.js": 497,
	"./tlh": 498,
	"./tlh.js": 498,
	"./tr": 499,
	"./tr.js": 499,
	"./tzl": 500,
	"./tzl.js": 500,
	"./tzm": 501,
	"./tzm-latn": 502,
	"./tzm-latn.js": 502,
	"./tzm.js": 501,
	"./uk": 503,
	"./uk.js": 503,
	"./ur": 504,
	"./ur.js": 504,
	"./uz": 505,
	"./uz-latn": 506,
	"./uz-latn.js": 506,
	"./uz.js": 505,
	"./vi": 507,
	"./vi.js": 507,
	"./x-pseudo": 508,
	"./x-pseudo.js": 508,
	"./yo": 509,
	"./yo.js": 509,
	"./zh-cn": 510,
	"./zh-cn.js": 510,
	"./zh-hk": 511,
	"./zh-hk.js": 511,
	"./zh-tw": 512,
	"./zh-tw.js": 512
};


function webpackContext(req) {
	var id = webpackContextResolve(req);
	return __webpack_require__(id);
}
function webpackContextResolve(req) {
	var id = map[req];
	if(!(id + 1)) { // check for number or string
		var e = new Error("Cannot find module '" + req + "'");
		e.code = 'MODULE_NOT_FOUND';
		throw e;
	}
	return id;
}
webpackContext.keys = function webpackContextKeys() {
	return Object.keys(map);
};
webpackContext.resolve = webpackContextResolve;
module.exports = webpackContext;
webpackContext.id = 515;

/***/ })

}]);
//# sourceMappingURL=ud-date-time.8a085582450bc05cd502.bundle.map