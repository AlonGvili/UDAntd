(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[12],{

/***/ 518:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "default", function() { return PageCycler; });
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(0);
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var react_interval__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(111);
/* harmony import */ var react_interval__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(react_interval__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var react_router_dom__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(146);
function _typeof(obj) { if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

function _possibleConstructorReturn(self, call) { if (call && (_typeof(call) === "object" || typeof call === "function")) { return call; } return _assertThisInitialized(self); }

function _assertThisInitialized(self) { if (self === void 0) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return self; }

function _getPrototypeOf(o) { _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) { return o.__proto__ || Object.getPrototypeOf(o); }; return _getPrototypeOf(o); }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function"); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } }); if (superClass) _setPrototypeOf(subClass, superClass); }

function _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }





var PageCycler =
/*#__PURE__*/
function (_React$Component) {
  _inherits(PageCycler, _React$Component);

  function PageCycler() {
    var _this;

    _classCallCheck(this, PageCycler);

    _this = _possibleConstructorReturn(this, _getPrototypeOf(PageCycler).call(this));
    _this.state = {
      currentPageIndex: 0
    };
    return _this;
  }

  _createClass(PageCycler, [{
    key: "cyclePage",
    value: function cyclePage() {
      var currentPageIndex = this.state.currentPageIndex + 1;

      if (this.state.currentPageIndex === this.props.pages.length - 1) {
        currentPageIndex = 0;
      }

      this.setState({
        currentPageIndex: currentPageIndex
      });

      if (this.props.pages[currentPageIndex].name == null) {
        this.props.history.push(this.props.pages[currentPageIndex].url);
      } else {
        this.props.history.push("/" + this.props.pages[currentPageIndex].name.replace(" ", "-"));
      }
    }
  }, {
    key: "render",
    value: function render() {
      return react__WEBPACK_IMPORTED_MODULE_0___default.a.createElement(react_interval__WEBPACK_IMPORTED_MODULE_1___default.a, {
        timeout: this.props.cyclePagesInterval * 1000,
        enabled: this.props.cyclePages,
        callback: this.cyclePage.bind(this)
      });
    }
  }]);

  return PageCycler;
}(react__WEBPACK_IMPORTED_MODULE_0___default.a.Component);


PageCycler = Object(react_router_dom__WEBPACK_IMPORTED_MODULE_2__[/* default */ "a"])(PageCycler);

/***/ })

}]);
//# sourceMappingURL=ud-page-cycler.e8266c3e16445a35ca71.bundle.map