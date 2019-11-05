(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[3],{

/***/ 434:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "default", function() { return DateTime; });
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(0);
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var moment__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(437);
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

/***/ 566:
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"./af": 438,
	"./af.js": 438,
	"./ar": 439,
	"./ar-dz": 440,
	"./ar-dz.js": 440,
	"./ar-kw": 441,
	"./ar-kw.js": 441,
	"./ar-ly": 442,
	"./ar-ly.js": 442,
	"./ar-ma": 443,
	"./ar-ma.js": 443,
	"./ar-sa": 444,
	"./ar-sa.js": 444,
	"./ar-tn": 445,
	"./ar-tn.js": 445,
	"./ar.js": 439,
	"./az": 446,
	"./az.js": 446,
	"./be": 447,
	"./be.js": 447,
	"./bg": 448,
	"./bg.js": 448,
	"./bm": 449,
	"./bm.js": 449,
	"./bn": 450,
	"./bn.js": 450,
	"./bo": 451,
	"./bo.js": 451,
	"./br": 452,
	"./br.js": 452,
	"./bs": 453,
	"./bs.js": 453,
	"./ca": 454,
	"./ca.js": 454,
	"./cs": 455,
	"./cs.js": 455,
	"./cv": 456,
	"./cv.js": 456,
	"./cy": 457,
	"./cy.js": 457,
	"./da": 458,
	"./da.js": 458,
	"./de": 459,
	"./de-at": 460,
	"./de-at.js": 460,
	"./de-ch": 461,
	"./de-ch.js": 461,
	"./de.js": 459,
	"./dv": 462,
	"./dv.js": 462,
	"./el": 463,
	"./el.js": 463,
	"./en-SG": 464,
	"./en-SG.js": 464,
	"./en-au": 465,
	"./en-au.js": 465,
	"./en-ca": 466,
	"./en-ca.js": 466,
	"./en-gb": 467,
	"./en-gb.js": 467,
	"./en-ie": 468,
	"./en-ie.js": 468,
	"./en-il": 469,
	"./en-il.js": 469,
	"./en-nz": 470,
	"./en-nz.js": 470,
	"./eo": 471,
	"./eo.js": 471,
	"./es": 472,
	"./es-do": 473,
	"./es-do.js": 473,
	"./es-us": 474,
	"./es-us.js": 474,
	"./es.js": 472,
	"./et": 475,
	"./et.js": 475,
	"./eu": 476,
	"./eu.js": 476,
	"./fa": 477,
	"./fa.js": 477,
	"./fi": 478,
	"./fi.js": 478,
	"./fo": 479,
	"./fo.js": 479,
	"./fr": 480,
	"./fr-ca": 481,
	"./fr-ca.js": 481,
	"./fr-ch": 482,
	"./fr-ch.js": 482,
	"./fr.js": 480,
	"./fy": 483,
	"./fy.js": 483,
	"./ga": 484,
	"./ga.js": 484,
	"./gd": 485,
	"./gd.js": 485,
	"./gl": 486,
	"./gl.js": 486,
	"./gom-latn": 487,
	"./gom-latn.js": 487,
	"./gu": 488,
	"./gu.js": 488,
	"./he": 489,
	"./he.js": 489,
	"./hi": 490,
	"./hi.js": 490,
	"./hr": 491,
	"./hr.js": 491,
	"./hu": 492,
	"./hu.js": 492,
	"./hy-am": 493,
	"./hy-am.js": 493,
	"./id": 494,
	"./id.js": 494,
	"./is": 495,
	"./is.js": 495,
	"./it": 496,
	"./it-ch": 497,
	"./it-ch.js": 497,
	"./it.js": 496,
	"./ja": 498,
	"./ja.js": 498,
	"./jv": 499,
	"./jv.js": 499,
	"./ka": 500,
	"./ka.js": 500,
	"./kk": 501,
	"./kk.js": 501,
	"./km": 502,
	"./km.js": 502,
	"./kn": 503,
	"./kn.js": 503,
	"./ko": 504,
	"./ko.js": 504,
	"./ku": 505,
	"./ku.js": 505,
	"./ky": 506,
	"./ky.js": 506,
	"./lb": 507,
	"./lb.js": 507,
	"./lo": 508,
	"./lo.js": 508,
	"./lt": 509,
	"./lt.js": 509,
	"./lv": 510,
	"./lv.js": 510,
	"./me": 511,
	"./me.js": 511,
	"./mi": 512,
	"./mi.js": 512,
	"./mk": 513,
	"./mk.js": 513,
	"./ml": 514,
	"./ml.js": 514,
	"./mn": 515,
	"./mn.js": 515,
	"./mr": 516,
	"./mr.js": 516,
	"./ms": 517,
	"./ms-my": 518,
	"./ms-my.js": 518,
	"./ms.js": 517,
	"./mt": 519,
	"./mt.js": 519,
	"./my": 520,
	"./my.js": 520,
	"./nb": 521,
	"./nb.js": 521,
	"./ne": 522,
	"./ne.js": 522,
	"./nl": 523,
	"./nl-be": 524,
	"./nl-be.js": 524,
	"./nl.js": 523,
	"./nn": 525,
	"./nn.js": 525,
	"./pa-in": 526,
	"./pa-in.js": 526,
	"./pl": 527,
	"./pl.js": 527,
	"./pt": 528,
	"./pt-br": 529,
	"./pt-br.js": 529,
	"./pt.js": 528,
	"./ro": 530,
	"./ro.js": 530,
	"./ru": 531,
	"./ru.js": 531,
	"./sd": 532,
	"./sd.js": 532,
	"./se": 533,
	"./se.js": 533,
	"./si": 534,
	"./si.js": 534,
	"./sk": 535,
	"./sk.js": 535,
	"./sl": 536,
	"./sl.js": 536,
	"./sq": 537,
	"./sq.js": 537,
	"./sr": 538,
	"./sr-cyrl": 539,
	"./sr-cyrl.js": 539,
	"./sr.js": 538,
	"./ss": 540,
	"./ss.js": 540,
	"./sv": 541,
	"./sv.js": 541,
	"./sw": 542,
	"./sw.js": 542,
	"./ta": 543,
	"./ta.js": 543,
	"./te": 544,
	"./te.js": 544,
	"./tet": 545,
	"./tet.js": 545,
	"./tg": 546,
	"./tg.js": 546,
	"./th": 547,
	"./th.js": 547,
	"./tl-ph": 548,
	"./tl-ph.js": 548,
	"./tlh": 549,
	"./tlh.js": 549,
	"./tr": 550,
	"./tr.js": 550,
	"./tzl": 551,
	"./tzl.js": 551,
	"./tzm": 552,
	"./tzm-latn": 553,
	"./tzm-latn.js": 553,
	"./tzm.js": 552,
	"./ug-cn": 554,
	"./ug-cn.js": 554,
	"./uk": 555,
	"./uk.js": 555,
	"./ur": 556,
	"./ur.js": 556,
	"./uz": 557,
	"./uz-latn": 558,
	"./uz-latn.js": 558,
	"./uz.js": 557,
	"./vi": 559,
	"./vi.js": 559,
	"./x-pseudo": 560,
	"./x-pseudo.js": 560,
	"./yo": 561,
	"./yo.js": 561,
	"./zh-cn": 562,
	"./zh-cn.js": 562,
	"./zh-hk": 563,
	"./zh-hk.js": 563,
	"./zh-tw": 564,
	"./zh-tw.js": 564
};


function webpackContext(req) {
	var id = webpackContextResolve(req);
	return __webpack_require__(id);
}
function webpackContextResolve(req) {
	if(!__webpack_require__.o(map, req)) {
		var e = new Error("Cannot find module '" + req + "'");
		e.code = 'MODULE_NOT_FOUND';
		throw e;
	}
	return map[req];
}
webpackContext.keys = function webpackContextKeys() {
	return Object.keys(map);
};
webpackContext.resolve = webpackContextResolve;
module.exports = webpackContext;
webpackContext.id = 566;

/***/ })

}]);
//# sourceMappingURL=ud-date-time.c0e05d70ce3cd19f11d9.bundle.map