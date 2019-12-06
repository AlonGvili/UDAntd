(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[3],{

/***/ 439:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "default", function() { return DateTime; });
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(0);
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var moment__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(445);
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

/***/ 574:
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"./af": 446,
	"./af.js": 446,
	"./ar": 447,
	"./ar-dz": 448,
	"./ar-dz.js": 448,
	"./ar-kw": 449,
	"./ar-kw.js": 449,
	"./ar-ly": 450,
	"./ar-ly.js": 450,
	"./ar-ma": 451,
	"./ar-ma.js": 451,
	"./ar-sa": 452,
	"./ar-sa.js": 452,
	"./ar-tn": 453,
	"./ar-tn.js": 453,
	"./ar.js": 447,
	"./az": 454,
	"./az.js": 454,
	"./be": 455,
	"./be.js": 455,
	"./bg": 456,
	"./bg.js": 456,
	"./bm": 457,
	"./bm.js": 457,
	"./bn": 458,
	"./bn.js": 458,
	"./bo": 459,
	"./bo.js": 459,
	"./br": 460,
	"./br.js": 460,
	"./bs": 461,
	"./bs.js": 461,
	"./ca": 462,
	"./ca.js": 462,
	"./cs": 463,
	"./cs.js": 463,
	"./cv": 464,
	"./cv.js": 464,
	"./cy": 465,
	"./cy.js": 465,
	"./da": 466,
	"./da.js": 466,
	"./de": 467,
	"./de-at": 468,
	"./de-at.js": 468,
	"./de-ch": 469,
	"./de-ch.js": 469,
	"./de.js": 467,
	"./dv": 470,
	"./dv.js": 470,
	"./el": 471,
	"./el.js": 471,
	"./en-SG": 472,
	"./en-SG.js": 472,
	"./en-au": 473,
	"./en-au.js": 473,
	"./en-ca": 474,
	"./en-ca.js": 474,
	"./en-gb": 475,
	"./en-gb.js": 475,
	"./en-ie": 476,
	"./en-ie.js": 476,
	"./en-il": 477,
	"./en-il.js": 477,
	"./en-nz": 478,
	"./en-nz.js": 478,
	"./eo": 479,
	"./eo.js": 479,
	"./es": 480,
	"./es-do": 481,
	"./es-do.js": 481,
	"./es-us": 482,
	"./es-us.js": 482,
	"./es.js": 480,
	"./et": 483,
	"./et.js": 483,
	"./eu": 484,
	"./eu.js": 484,
	"./fa": 485,
	"./fa.js": 485,
	"./fi": 486,
	"./fi.js": 486,
	"./fo": 487,
	"./fo.js": 487,
	"./fr": 488,
	"./fr-ca": 489,
	"./fr-ca.js": 489,
	"./fr-ch": 490,
	"./fr-ch.js": 490,
	"./fr.js": 488,
	"./fy": 491,
	"./fy.js": 491,
	"./ga": 492,
	"./ga.js": 492,
	"./gd": 493,
	"./gd.js": 493,
	"./gl": 494,
	"./gl.js": 494,
	"./gom-latn": 495,
	"./gom-latn.js": 495,
	"./gu": 496,
	"./gu.js": 496,
	"./he": 497,
	"./he.js": 497,
	"./hi": 498,
	"./hi.js": 498,
	"./hr": 499,
	"./hr.js": 499,
	"./hu": 500,
	"./hu.js": 500,
	"./hy-am": 501,
	"./hy-am.js": 501,
	"./id": 502,
	"./id.js": 502,
	"./is": 503,
	"./is.js": 503,
	"./it": 504,
	"./it-ch": 505,
	"./it-ch.js": 505,
	"./it.js": 504,
	"./ja": 506,
	"./ja.js": 506,
	"./jv": 507,
	"./jv.js": 507,
	"./ka": 508,
	"./ka.js": 508,
	"./kk": 509,
	"./kk.js": 509,
	"./km": 510,
	"./km.js": 510,
	"./kn": 511,
	"./kn.js": 511,
	"./ko": 512,
	"./ko.js": 512,
	"./ku": 513,
	"./ku.js": 513,
	"./ky": 514,
	"./ky.js": 514,
	"./lb": 515,
	"./lb.js": 515,
	"./lo": 516,
	"./lo.js": 516,
	"./lt": 517,
	"./lt.js": 517,
	"./lv": 518,
	"./lv.js": 518,
	"./me": 519,
	"./me.js": 519,
	"./mi": 520,
	"./mi.js": 520,
	"./mk": 521,
	"./mk.js": 521,
	"./ml": 522,
	"./ml.js": 522,
	"./mn": 523,
	"./mn.js": 523,
	"./mr": 524,
	"./mr.js": 524,
	"./ms": 525,
	"./ms-my": 526,
	"./ms-my.js": 526,
	"./ms.js": 525,
	"./mt": 527,
	"./mt.js": 527,
	"./my": 528,
	"./my.js": 528,
	"./nb": 529,
	"./nb.js": 529,
	"./ne": 530,
	"./ne.js": 530,
	"./nl": 531,
	"./nl-be": 532,
	"./nl-be.js": 532,
	"./nl.js": 531,
	"./nn": 533,
	"./nn.js": 533,
	"./pa-in": 534,
	"./pa-in.js": 534,
	"./pl": 535,
	"./pl.js": 535,
	"./pt": 536,
	"./pt-br": 537,
	"./pt-br.js": 537,
	"./pt.js": 536,
	"./ro": 538,
	"./ro.js": 538,
	"./ru": 539,
	"./ru.js": 539,
	"./sd": 540,
	"./sd.js": 540,
	"./se": 541,
	"./se.js": 541,
	"./si": 542,
	"./si.js": 542,
	"./sk": 543,
	"./sk.js": 543,
	"./sl": 544,
	"./sl.js": 544,
	"./sq": 545,
	"./sq.js": 545,
	"./sr": 546,
	"./sr-cyrl": 547,
	"./sr-cyrl.js": 547,
	"./sr.js": 546,
	"./ss": 548,
	"./ss.js": 548,
	"./sv": 549,
	"./sv.js": 549,
	"./sw": 550,
	"./sw.js": 550,
	"./ta": 551,
	"./ta.js": 551,
	"./te": 552,
	"./te.js": 552,
	"./tet": 553,
	"./tet.js": 553,
	"./tg": 554,
	"./tg.js": 554,
	"./th": 555,
	"./th.js": 555,
	"./tl-ph": 556,
	"./tl-ph.js": 556,
	"./tlh": 557,
	"./tlh.js": 557,
	"./tr": 558,
	"./tr.js": 558,
	"./tzl": 559,
	"./tzl.js": 559,
	"./tzm": 560,
	"./tzm-latn": 561,
	"./tzm-latn.js": 561,
	"./tzm.js": 560,
	"./ug-cn": 562,
	"./ug-cn.js": 562,
	"./uk": 563,
	"./uk.js": 563,
	"./ur": 564,
	"./ur.js": 564,
	"./uz": 565,
	"./uz-latn": 566,
	"./uz-latn.js": 566,
	"./uz.js": 565,
	"./vi": 567,
	"./vi.js": 567,
	"./x-pseudo": 568,
	"./x-pseudo.js": 568,
	"./yo": 569,
	"./yo.js": 569,
	"./zh-cn": 570,
	"./zh-cn.js": 570,
	"./zh-hk": 571,
	"./zh-hk.js": 571,
	"./zh-tw": 572,
	"./zh-tw.js": 572
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
webpackContext.id = 574;

/***/ })

}]);
//# sourceMappingURL=ud-date-time.ec35abf7ec504d9b521a.bundle.map