(window.webpackJsonpAntd=window.webpackJsonpAntd||[]).push([[40],{160:function(e,t,n){"use strict";n(63),n(161)},161:function(e,t,n){var r=n(162);"string"==typeof r&&(r=[[e.i,r,""]]);var o={insert:"head",singleton:!1};n(64)(r,o);r.locals&&(e.exports=r.locals)},162:function(e,t,n){(e.exports=n(1)(!1)).push([e.i,"/* stylelint-disable at-rule-empty-line-before,at-rule-name-space-after,at-rule-no-unknown */\n/* stylelint-disable no-duplicate-selectors */\n/* stylelint-disable */\n/* stylelint-disable declaration-bang-space-before,no-duplicate-selectors,string-no-newline */\n.ant-layout {\n  display: -webkit-box;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-box-flex: 1;\n      -ms-flex: auto;\n          flex: auto;\n  -webkit-box-orient: vertical;\n  -webkit-box-direction: normal;\n      -ms-flex-direction: column;\n          flex-direction: column;\n  /* fix firefox can't set height smaller than content on flex item */\n  min-height: 0;\n  background: #f0f2f5;\n}\n.ant-layout,\n.ant-layout * {\n  -webkit-box-sizing: border-box;\n          box-sizing: border-box;\n}\n.ant-layout.ant-layout-has-sider {\n  -webkit-box-orient: horizontal;\n  -webkit-box-direction: normal;\n      -ms-flex-direction: row;\n          flex-direction: row;\n}\n.ant-layout.ant-layout-has-sider > .ant-layout,\n.ant-layout.ant-layout-has-sider > .ant-layout-content {\n  overflow-x: hidden;\n}\n.ant-layout-header,\n.ant-layout-footer {\n  -webkit-box-flex: 0;\n      -ms-flex: 0 0 auto;\n          flex: 0 0 auto;\n}\n.ant-layout-header {\n  height: 64px;\n  padding: 0 50px;\n  line-height: 64px;\n  background: #001529;\n}\n.ant-layout-footer {\n  padding: 24px 50px;\n  color: rgba(0, 0, 0, 0.65);\n  font-size: 14px;\n  background: #f0f2f5;\n}\n.ant-layout-content {\n  -webkit-box-flex: 1;\n      -ms-flex: auto;\n          flex: auto;\n  /* fix firefox can't set height smaller than content on flex item */\n  min-height: 0;\n}\n.ant-layout-sider {\n  position: relative;\n  /* fix firefox can't set width smaller than content on flex item */\n  min-width: 0;\n  background: #001529;\n  -webkit-transition: all 0.2s;\n  transition: all 0.2s;\n}\n.ant-layout-sider-children {\n  height: 100%;\n  margin-top: -0.1px;\n  padding-top: 0.1px;\n}\n.ant-layout-sider-has-trigger {\n  padding-bottom: 48px;\n}\n.ant-layout-sider-right {\n  -webkit-box-ordinal-group: 2;\n      -ms-flex-order: 1;\n          order: 1;\n}\n.ant-layout-sider-trigger {\n  position: fixed;\n  bottom: 0;\n  z-index: 1;\n  height: 48px;\n  color: #fff;\n  line-height: 48px;\n  text-align: center;\n  background: #002140;\n  cursor: pointer;\n  -webkit-transition: all 0.2s;\n  transition: all 0.2s;\n}\n.ant-layout-sider-zero-width > * {\n  overflow: hidden;\n}\n.ant-layout-sider-zero-width-trigger {\n  position: absolute;\n  top: 64px;\n  right: -36px;\n  z-index: 1;\n  width: 36px;\n  height: 42px;\n  color: #fff;\n  font-size: 18px;\n  line-height: 42px;\n  text-align: center;\n  background: #001529;\n  border-radius: 0 4px 4px 0;\n  cursor: pointer;\n  -webkit-transition: background 0.3s ease;\n  transition: background 0.3s ease;\n}\n.ant-layout-sider-zero-width-trigger:hover {\n  background: #192c3e;\n}\n.ant-layout-sider-zero-width-trigger-right {\n  left: -36px;\n  border-radius: 4px 0 0 4px;\n}\n.ant-layout-sider-light {\n  background: #fff;\n}\n.ant-layout-sider-light .ant-layout-sider-trigger {\n  color: rgba(0, 0, 0, 0.65);\n  background: #fff;\n}\n.ant-layout-sider-light .ant-layout-sider-zero-width-trigger {\n  color: rgba(0, 0, 0, 0.65);\n  background: #fff;\n}\n",""])},163:function(e,t,n){"use strict";var r=n(96),o=n(93);r.b.Sider=o.b,t.a=r.b},31:function(e,t,n){"use strict";n.r(t);n(160);var r=n(163),o=n(0),a=n.n(o),i=n(58);function l(){return(l=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}function c(e,t){return function(e){if(Array.isArray(e))return e}(e)||function(e,t){if(!(Symbol.iterator in Object(e)||"[object Arguments]"===Object.prototype.toString.call(e)))return;var n=[],r=!0,o=!1,a=void 0;try{for(var i,l=e[Symbol.iterator]();!(r=(i=l.next()).done)&&(n.push(i.value),!t||n.length!==t);r=!0);}catch(e){o=!0,a=e}finally{try{r||null==l.return||l.return()}finally{if(o)throw a}}return n}(e,t)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}t.default=function(e){var t=c(Object(i.a)(e.id,e),2),n=t[0],s=(t[1],n.content),u=n.attributes,p=c(Object(o.useState)(!0),2),f=p[0],d=p[1];return a.a.createElement(r.a.Sider,l({},u,{onCollapse:function(e){return d(!f)},collapsed:f,collapsible:!0}),UniversalDashboard.renderComponent(s))}},52:function(e,t,n){"use strict";function r(){var e=this.constructor.getDerivedStateFromProps(this.props,this.state);null!=e&&this.setState(e)}function o(e){this.setState(function(t){var n=this.constructor.getDerivedStateFromProps(e,t);return null!=n?n:null}.bind(this))}function a(e,t){try{var n=this.props,r=this.state;this.props=e,this.state=t,this.__reactInternalSnapshotFlag=!0,this.__reactInternalSnapshot=this.getSnapshotBeforeUpdate(n,r)}finally{this.props=n,this.state=r}}function i(e){var t=e.prototype;if(!t||!t.isReactComponent)throw new Error("Can only polyfill class components");if("function"!=typeof e.getDerivedStateFromProps&&"function"!=typeof t.getSnapshotBeforeUpdate)return e;var n=null,i=null,l=null;if("function"==typeof t.componentWillMount?n="componentWillMount":"function"==typeof t.UNSAFE_componentWillMount&&(n="UNSAFE_componentWillMount"),"function"==typeof t.componentWillReceiveProps?i="componentWillReceiveProps":"function"==typeof t.UNSAFE_componentWillReceiveProps&&(i="UNSAFE_componentWillReceiveProps"),"function"==typeof t.componentWillUpdate?l="componentWillUpdate":"function"==typeof t.UNSAFE_componentWillUpdate&&(l="UNSAFE_componentWillUpdate"),null!==n||null!==i||null!==l){var c=e.displayName||e.name,s="function"==typeof e.getDerivedStateFromProps?"getDerivedStateFromProps()":"getSnapshotBeforeUpdate()";throw Error("Unsafe legacy lifecycles will not be called for components using new component APIs.\n\n"+c+" uses "+s+" but also contains the following legacy lifecycles:"+(null!==n?"\n  "+n:"")+(null!==i?"\n  "+i:"")+(null!==l?"\n  "+l:"")+"\n\nThe above lifecycles should be removed. Learn more about this warning here:\nhttps://fb.me/react-async-component-lifecycle-hooks")}if("function"==typeof e.getDerivedStateFromProps&&(t.componentWillMount=r,t.componentWillReceiveProps=o),"function"==typeof t.getSnapshotBeforeUpdate){if("function"!=typeof t.componentDidUpdate)throw new Error("Cannot polyfill getSnapshotBeforeUpdate() for components that do not define componentDidUpdate() on the prototype");t.componentWillUpdate=a;var u=t.componentDidUpdate;t.componentDidUpdate=function(e,t,n){var r=this.__reactInternalSnapshotFlag?this.__reactInternalSnapshot:n;u.call(this,e,t,r)}}return e}n.r(t),n.d(t,"polyfill",(function(){return i})),r.__suppressDeprecationWarning=!0,o.__suppressDeprecationWarning=!0,a.__suppressDeprecationWarning=!0},54:function(e,t,n){"use strict";var r=n(56);t.a=function(e,t,n){Object(r.a)(e,"[antd: ".concat(t,"] ").concat(n))}},55:function(e,t){var n;n=function(){return this}();try{n=n||new Function("return this")()}catch(e){"object"==typeof window&&(n=window)}e.exports=n},56:function(e,t,n){"use strict";var r={};function o(e,t){0}function a(e,t,n){t||r[n]||(e(!1,n),r[n]=!0)}t.a=function(e,t){a(o,e,t)}},57:function(e,t,n){"use strict";t.__esModule=!0;var r=a(n(0)),o=a(n(66));function a(e){return e&&e.__esModule?e:{default:e}}t.default=r.default.createContext||o.default,e.exports=t.default},58:function(e,t,n){"use strict";n.d(t,"a",(function(){return m}));var r=n(0);function o(e){return function(e){if(Array.isArray(e)){for(var t=0,n=new Array(e.length);t<e.length;t++)n[t]=e[t];return n}}(e)||function(e){if(Symbol.iterator in Object(e)||"[object Arguments]"===Object.prototype.toString.call(e))return Array.from(e)}(e)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance")}()}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){l(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function c(e,t){return function(e){if(Array.isArray(e))return e}(e)||function(e,t){if(!(Symbol.iterator in Object(e)||"[object Arguments]"===Object.prototype.toString.call(e)))return;var n=[],r=!0,o=!1,a=void 0;try{for(var i,l=e[Symbol.iterator]();!(r=(i=l.next()).done)&&(n.push(i.value),!t||n.length!==t);r=!0);}catch(e){o=!0,a=e}finally{try{r||null==l.return||l.return()}finally{if(o)throw a}}return n}(e,t)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}function s(e,t){if(null==e)return{};var n,r,o=function(e,t){if(null==e)return{};var n,r,o={},a=Object.keys(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||(o[n]=e[n]);return o}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(o[n]=e[n])}return o}var u="setState",p="requestState",f="removeElement",d="addElement",h="clearElement",y="syncElement";function m(e,t){var n=t.content,a=s(t,["content"]),l=c(Object(r.useState)({content:n,attributes:a}),2),m=l[0],b=l[1];Object(r.useEffect)((function(){var t=UniversalDashboard.subscribe(e,v);return function(){return UniversalDashboard.unsubscribe(t)}}));var v=function(e,t){switch(t.type){case u:b((function(e){return{attributes:i({},e.attributes,{},t.state.attributes),content:t.state.content?Array.isArray(t.state.content)?t.state.content:Array.from(t.state.content):e.content}}));break;case p:console.log("REQUEST_STATE: ",m),UniversalDashboard.post("/api/internal/component/element/sessionState/".concat(t.requestId),i({},m));break;case d:b((function(e){return i({},e,{content:e.content.concat(t.elements)})}));break;case f:b((function(e){var t=e.content;return t.splice(-1,1),i({},e,{content:o(t)})}));break;case h:b((function(e){return i({},e,{content:[]})}));break;case y:g()}},g=Object(r.useCallback)((function(){UniversalDashboard.get("/api/internal/component/element/".concat(e),(function(e){return b((function(t){return i({},t,{content:e})}))}))}),[e]);return[m,g,b]}},59:function(e,t,n){"use strict";var r=n(53),o=n.n(r);t.a=function(e,t){for(var n=o()({},e),r=0;r<t.length;r++){delete n[t[r]]}return n}},61:function(e,t,n){"use strict";var r=n(0),o=n(44),a=n.n(o),i=n(86),l=n(1249);function c(){return(c=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}var s=function(e,t){var n={};for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&t.indexOf(r)<0&&(n[r]=e[r]);if(null!=e&&"function"==typeof Object.getOwnPropertySymbols){var o=0;for(r=Object.getOwnPropertySymbols(e);o<r.length;o++)t.indexOf(r[o])<0&&Object.prototype.propertyIsEnumerable.call(e,r[o])&&(n[r[o]]=e[r[o]])}return n},u=new Set;var p=n(54),f={width:"1em",height:"1em",fill:"currentColor","aria-hidden":!0,focusable:"false"},d=/-fill$/,h=/-o$/,y=/-twotone$/;var m=n(68);function b(e){return l.a.setTwoToneColors({primaryColor:e})}function v(){return(v=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}function g(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}var w,x=function(e,t){var n={};for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&t.indexOf(r)<0&&(n[r]=e[r]);if(null!=e&&"function"==typeof Object.getOwnPropertySymbols){var o=0;for(r=Object.getOwnPropertySymbols(e);o<r.length;o++)t.indexOf(r[o])<0&&Object.prototype.propertyIsEnumerable.call(e,r[o])&&(n[r[o]]=e[r[o]])}return n};l.a.add.apply(l.a,function(e){if(Array.isArray(e)){for(var t=0,n=new Array(e.length);t<e.length;t++)n[t]=e[t];return n}}(w=Object.keys(i).map((function(e){return i[e]})))||function(e){if(Symbol.iterator in Object(e)||"[object Arguments]"===Object.prototype.toString.call(e))return Array.from(e)}(w)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance")}()),b("#1890ff");var O,E="outlined";var S=function(e){var t,n=e.className,o=e.type,i=e.component,c=e.viewBox,s=e.spin,u=e.rotate,b=e.tabIndex,w=e.onClick,S=e.children,j=e.theme,C=e.twoToneColor,P=x(e,["className","type","component","viewBox","spin","rotate","tabIndex","onClick","children","theme","twoToneColor"]);Object(p.a)(Boolean(o||i||S),"Icon","Should have `type` prop or `component` prop or `children`.");var k=a()((g(t={},"anticon",!0),g(t,"anticon-".concat(o),Boolean(o)),t),n),_=a()(g({},"anticon-spin",!!s||"loading"===o)),N=u?{msTransform:"rotate(".concat(u,"deg)"),transform:"rotate(".concat(u,"deg)")}:void 0,A=v(v({},f),{className:_,style:N,viewBox:c});c||delete A.viewBox;var T=function(){if(i)return r.createElement(i,A,S);if(S)return Object(p.a)(Boolean(c)||1===r.Children.count(S)&&r.isValidElement(S)&&"use"===r.Children.only(S).type,"Icon","Make sure that you provide correct `viewBox` prop (default `0 0 1024 1024`) to the icon."),r.createElement("svg",v({},A,{viewBox:c}),S);if("string"==typeof o){var e=o;if(j){var t=function(e){var t=null;return d.test(e)?t="filled":h.test(e)?t="outlined":y.test(e)&&(t="twoTone"),t}(o);Object(p.a)(!t||j===t,"Icon","The icon name '".concat(o,"' already specify a theme '").concat(t,"',")+" the 'theme' prop '".concat(j,"' will be ignored."))}return e=function(e,t){var n=e;return"filled"===t?n+="-fill":"outlined"===t?n+="-o":"twoTone"===t?n+="-twotone":Object(p.a)(!1,"Icon","This icon '".concat(e,"' has unknown theme '").concat(t,"'")),n}(function(e){return e.replace(d,"").replace(h,"").replace(y,"")}(function(e){var t=e;switch(e){case"cross":t="close";break;case"interation":t="interaction";break;case"canlendar":t="calendar";break;case"colum-height":t="column-height"}return Object(p.a)(t===e,"Icon","Icon '".concat(e,"' was a typo and is now deprecated, please use '").concat(t,"' instead.")),t}(e)),O||j||E),r.createElement(l.a,{className:_,type:e,primaryColor:C,style:N})}},I=b;return void 0===I&&w&&(I=-1),r.createElement(m.a,{componentName:"Icon"},(function(e){return r.createElement("i",v({"aria-label":o&&"".concat(e.icon,": ").concat(o)},P,{tabIndex:I,onClick:w,className:k}),T())}))};S.createFromIconfontCN=function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},t=e.scriptUrl,n=e.extraCommonProps,o=void 0===n?{}:n;if("undefined"!=typeof document&&"undefined"!=typeof window&&"function"==typeof document.createElement&&"string"==typeof t&&t.length&&!u.has(t)){var a=document.createElement("script");a.setAttribute("src",t),a.setAttribute("data-namespace",t),u.add(t),document.body.appendChild(a)}var i=function(e){var t=e.type,n=e.children,a=s(e,["type","children"]),i=null;return e.type&&(i=r.createElement("use",{xlinkHref:"#".concat(t)})),n&&(i=n),r.createElement(j,c({},o,a),i)};return i.displayName="Iconfont",i},S.getTwoToneColor=function(){return l.a.getTwoToneColors().primaryColor},S.setTwoToneColor=b;var j=t.a=S},62:function(e,t,n){"use strict";var r=function(){};e.exports=r},65:function(e,t,n){"use strict";var r=n(0),o=n(44),a=n.n(o),i=n(85),l=n(68),c=function(){return r.createElement("svg",{width:"184",height:"152",viewBox:"0 0 184 152",xmlns:"http://www.w3.org/2000/svg"},r.createElement("g",{fill:"none",fillRule:"evenodd"},r.createElement("g",{transform:"translate(24 31.67)"},r.createElement("ellipse",{fillOpacity:".8",fill:"#F5F5F7",cx:"67.797",cy:"106.89",rx:"67.797",ry:"12.668"}),r.createElement("path",{d:"M122.034 69.674L98.109 40.229c-1.148-1.386-2.826-2.225-4.593-2.225h-51.44c-1.766 0-3.444.839-4.592 2.225L13.56 69.674v15.383h108.475V69.674z",fill:"#AEB8C2"}),r.createElement("path",{d:"M101.537 86.214L80.63 61.102c-1.001-1.207-2.507-1.867-4.048-1.867H31.724c-1.54 0-3.047.66-4.048 1.867L6.769 86.214v13.792h94.768V86.214z",fill:"url(#linearGradient-1)",transform:"translate(13.56)"}),r.createElement("path",{d:"M33.83 0h67.933a4 4 0 0 1 4 4v93.344a4 4 0 0 1-4 4H33.83a4 4 0 0 1-4-4V4a4 4 0 0 1 4-4z",fill:"#F5F5F7"}),r.createElement("path",{d:"M42.678 9.953h50.237a2 2 0 0 1 2 2V36.91a2 2 0 0 1-2 2H42.678a2 2 0 0 1-2-2V11.953a2 2 0 0 1 2-2zM42.94 49.767h49.713a2.262 2.262 0 1 1 0 4.524H42.94a2.262 2.262 0 0 1 0-4.524zM42.94 61.53h49.713a2.262 2.262 0 1 1 0 4.525H42.94a2.262 2.262 0 0 1 0-4.525zM121.813 105.032c-.775 3.071-3.497 5.36-6.735 5.36H20.515c-3.238 0-5.96-2.29-6.734-5.36a7.309 7.309 0 0 1-.222-1.79V69.675h26.318c2.907 0 5.25 2.448 5.25 5.42v.04c0 2.971 2.37 5.37 5.277 5.37h34.785c2.907 0 5.277-2.421 5.277-5.393V75.1c0-2.972 2.343-5.426 5.25-5.426h26.318v33.569c0 .617-.077 1.216-.221 1.789z",fill:"#DCE0E6"})),r.createElement("path",{d:"M149.121 33.292l-6.83 2.65a1 1 0 0 1-1.317-1.23l1.937-6.207c-2.589-2.944-4.109-6.534-4.109-10.408C138.802 8.102 148.92 0 161.402 0 173.881 0 184 8.102 184 18.097c0 9.995-10.118 18.097-22.599 18.097-4.528 0-8.744-1.066-12.28-2.902z",fill:"#DCE0E6"}),r.createElement("g",{transform:"translate(149.65 15.383)",fill:"#FFF"},r.createElement("ellipse",{cx:"20.654",cy:"3.167",rx:"2.849",ry:"2.815"}),r.createElement("path",{d:"M5.698 5.63H0L2.898.704zM9.259.704h4.985V5.63H9.259z"}))))},s=function(){return r.createElement("svg",{width:"64",height:"41",viewBox:"0 0 64 41",xmlns:"http://www.w3.org/2000/svg"},r.createElement("g",{transform:"translate(0 1)",fill:"none",fillRule:"evenodd"},r.createElement("ellipse",{fill:"#F5F5F5",cx:"32",cy:"33",rx:"32",ry:"7"}),r.createElement("g",{fillRule:"nonzero",stroke:"#D9D9D9"},r.createElement("path",{d:"M55 12.76L44.854 1.258C44.367.474 43.656 0 42.907 0H21.093c-.749 0-1.46.474-1.947 1.257L9 12.761V22h46v-9.24z"}),r.createElement("path",{d:"M41.613 15.931c0-1.605.994-2.93 2.227-2.931H55v18.137C55 33.26 53.68 35 52.05 35h-40.1C10.32 35 9 33.259 9 31.137V13h11.16c1.233 0 2.227 1.323 2.227 2.928v.022c0 1.605 1.005 2.901 2.237 2.901h14.752c1.232 0 2.237-1.308 2.237-2.913v-.007z",fill:"#FAFAFA"}))))};function u(){return(u=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}var p=function(e,t){var n={};for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&t.indexOf(r)<0&&(n[r]=e[r]);if(null!=e&&"function"==typeof Object.getOwnPropertySymbols){var o=0;for(r=Object.getOwnPropertySymbols(e);o<r.length;o++)t.indexOf(r[o])<0&&Object.prototype.propertyIsEnumerable.call(e,r[o])&&(n[r[o]]=e[r[o]])}return n},f=r.createElement(c,null),d=r.createElement(s,null),h=function(e){return r.createElement(i.a,null,(function(t){var n=t.getPrefixCls,o=e.className,i=e.prefixCls,c=e.image,s=void 0===c?f:c,h=e.description,y=e.children,m=e.imageStyle,b=p(e,["className","prefixCls","image","description","children","imageStyle"]);return r.createElement(l.a,{componentName:"Empty"},(function(e){var t,l,c,p=n("empty",i),f=void 0!==h?h:e.description,v="string"==typeof f?f:"empty",g=null;return g="string"==typeof s?r.createElement("img",{alt:v,src:s}):s,r.createElement("div",u({className:a()(p,(t={},l="".concat(p,"-normal"),c=s===d,l in t?Object.defineProperty(t,l,{value:c,enumerable:!0,configurable:!0,writable:!0}):t[l]=c,t),o)},b),r.createElement("div",{className:"".concat(p,"-image"),style:m},g),f&&r.createElement("p",{className:"".concat(p,"-description")},f),y&&r.createElement("div",{className:"".concat(p,"-footer")},y))}))}))};h.PRESENTED_IMAGE_DEFAULT=f,h.PRESENTED_IMAGE_SIMPLE=d;t.a=h},66:function(e,t,n){"use strict";t.__esModule=!0;var r=n(0),o=(i(r),i(n(45))),a=i(n(67));i(n(62));function i(e){return e&&e.__esModule?e:{default:e}}function l(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function c(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function s(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}var u=1073741823;t.default=function(e,t){var n,i,p="__create-react-context-"+(0,a.default)()+"__",f=function(e){function n(){var t,r,o,a;l(this,n);for(var i=arguments.length,s=Array(i),u=0;u<i;u++)s[u]=arguments[u];return t=r=c(this,e.call.apply(e,[this].concat(s))),r.emitter=(o=r.props.value,a=[],{on:function(e){a.push(e)},off:function(e){a=a.filter((function(t){return t!==e}))},get:function(){return o},set:function(e,t){o=e,a.forEach((function(e){return e(o,t)}))}}),c(r,t)}return s(n,e),n.prototype.getChildContext=function(){var e;return(e={})[p]=this.emitter,e},n.prototype.componentWillReceiveProps=function(e){if(this.props.value!==e.value){var n=this.props.value,r=e.value,o=void 0;((a=n)===(i=r)?0!==a||1/a==1/i:a!=a&&i!=i)?o=0:(o="function"==typeof t?t(n,r):u,0!==(o|=0)&&this.emitter.set(e.value,o))}var a,i},n.prototype.render=function(){return this.props.children},n}(r.Component);f.childContextTypes=((n={})[p]=o.default.object.isRequired,n);var d=function(t){function n(){var e,r;l(this,n);for(var o=arguments.length,a=Array(o),i=0;i<o;i++)a[i]=arguments[i];return e=r=c(this,t.call.apply(t,[this].concat(a))),r.state={value:r.getValue()},r.onUpdate=function(e,t){0!=((0|r.observedBits)&t)&&r.setState({value:r.getValue()})},c(r,e)}return s(n,t),n.prototype.componentWillReceiveProps=function(e){var t=e.observedBits;this.observedBits=null==t?u:t},n.prototype.componentDidMount=function(){this.context[p]&&this.context[p].on(this.onUpdate);var e=this.props.observedBits;this.observedBits=null==e?u:e},n.prototype.componentWillUnmount=function(){this.context[p]&&this.context[p].off(this.onUpdate)},n.prototype.getValue=function(){return this.context[p]?this.context[p].get():e},n.prototype.render=function(){return(e=this.props.children,Array.isArray(e)?e[0]:e)(this.state.value);var e},n}(r.Component);return d.contextTypes=((i={})[p]=o.default.object,i),{Provider:f,Consumer:d}},e.exports=t.default},67:function(e,t,n){"use strict";(function(t){var n="__global_unique_id__";e.exports=function(){return t[n]=(t[n]||0)+1}}).call(this,n(55))},85:function(e,t,n){"use strict";var r=n(0),o=n(57),a=n.n(o),i=n(65),l=function(e){return r.createElement(s,null,(function(t){var n=(0,t.getPrefixCls)("empty");switch(e){case"Table":case"List":return r.createElement(i.a,{image:i.a.PRESENTED_IMAGE_SIMPLE});case"Select":case"TreeSelect":case"Cascader":case"Transfer":case"Mentions":return r.createElement(i.a,{image:i.a.PRESENTED_IMAGE_SIMPLE,className:"".concat(n,"-small")});default:return r.createElement(i.a,null)}}))};function c(){return(c=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}n.d(t,"a",(function(){return s})),n.d(t,"b",(function(){return u}));var s=a()({getPrefixCls:function(e,t){return t||"ant-".concat(e)},renderEmpty:l}).Consumer;function u(e){return function(t){var n=function(n){return r.createElement(s,null,(function(o){var a=e.prefixCls,i=(0,o.getPrefixCls)(a,n.prefixCls);return r.createElement(t,c({},o,n,{prefixCls:i}))}))},o=t.constructor,a=o&&o.displayName||t.name||"Component";return n.displayName="withConfigConsumer(".concat(a,")"),n}}},93:function(e,t,n){"use strict";var r=n(57),o=n.n(r),a=n(0),i=n(52),l=n(44),c=n.n(l),s=n(59),u=n(96),p=n(85),f=n(61),d=function(e){return!isNaN(parseFloat(e))&&isFinite(e)};function h(e){return(h="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e})(e)}function y(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function m(){return(m=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}function b(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function v(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}function g(e,t,n){return t&&v(e.prototype,t),n&&v(e,n),e}function w(e,t){return!t||"object"!==h(t)&&"function"!=typeof t?function(e){if(void 0===e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return e}(e):t}function x(e){return(x=Object.setPrototypeOf?Object.getPrototypeOf:function(e){return e.__proto__||Object.getPrototypeOf(e)})(e)}function O(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function");e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,writable:!0,configurable:!0}}),t&&E(e,t)}function E(e,t){return(E=Object.setPrototypeOf||function(e,t){return e.__proto__=t,e})(e,t)}n.d(t,"a",(function(){return P})),n.d(t,"b",(function(){return N}));var S=function(e,t){var n={};for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&t.indexOf(r)<0&&(n[r]=e[r]);if(null!=e&&"function"==typeof Object.getOwnPropertySymbols){var o=0;for(r=Object.getOwnPropertySymbols(e);o<r.length;o++)t.indexOf(r[o])<0&&Object.prototype.propertyIsEnumerable.call(e,r[o])&&(n[r[o]]=e[r[o]])}return n};if("undefined"!=typeof window){window.matchMedia||(window.matchMedia=function(e){return{media:e,matches:!1,addListener:function(){},removeListener:function(){}}})}var j,C={xs:"479.98px",sm:"575.98px",md:"767.98px",lg:"991.98px",xl:"1199.98px",xxl:"1599.98px"},P=o()({}),k=(j=0,function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"";return j+=1,"".concat(e).concat(j)}),_=function(e){function t(e){var n,r,o;return b(this,t),(n=w(this,x(t).call(this,e))).responsiveHandler=function(e){n.setState({below:e.matches});var t=n.props.onBreakpoint;t&&t(e.matches),n.state.collapsed!==e.matches&&n.setCollapsed(e.matches,"responsive")},n.setCollapsed=function(e,t){"collapsed"in n.props||n.setState({collapsed:e});var r=n.props.onCollapse;r&&r(e,t)},n.toggle=function(){var e=!n.state.collapsed;n.setCollapsed(e,"clickTrigger")},n.belowShowChange=function(){n.setState((function(e){return{belowShow:!e.belowShow}}))},n.renderSider=function(e){var t,r=e.getPrefixCls,o=n.props,i=o.prefixCls,l=o.className,u=o.theme,p=o.collapsible,h=o.reverseArrow,b=o.trigger,v=o.style,g=o.width,w=o.collapsedWidth,x=o.zeroWidthTriggerStyle,O=S(o,["prefixCls","className","theme","collapsible","reverseArrow","trigger","style","width","collapsedWidth","zeroWidthTriggerStyle"]),E=r("layout-sider",i),j=Object(s.a)(O,["collapsed","defaultCollapsed","onCollapse","breakpoint","onBreakpoint","siderHook","zeroWidthTriggerStyle"]),C=n.state.collapsed?w:g,P=d(C)?"".concat(C,"px"):String(C),k=0===parseFloat(String(w||0))?a.createElement("span",{onClick:n.toggle,className:"".concat(E,"-zero-width-trigger ").concat(E,"-zero-width-trigger-").concat(h?"right":"left"),style:x},a.createElement(f.a,{type:"bars"})):null,_={expanded:h?a.createElement(f.a,{type:"right"}):a.createElement(f.a,{type:"left"}),collapsed:h?a.createElement(f.a,{type:"left"}):a.createElement(f.a,{type:"right"})}[n.state.collapsed?"collapsed":"expanded"],N=null!==b?k||a.createElement("div",{className:"".concat(E,"-trigger"),onClick:n.toggle,style:{width:P}},b||_):null,A=m(m({},v),{flex:"0 0 ".concat(P),maxWidth:P,minWidth:P,width:P}),T=c()(l,E,"".concat(E,"-").concat(u),(y(t={},"".concat(E,"-collapsed"),!!n.state.collapsed),y(t,"".concat(E,"-has-trigger"),p&&null!==b&&!k),y(t,"".concat(E,"-below"),!!n.state.below),y(t,"".concat(E,"-zero-width"),0===parseFloat(P)),t));return a.createElement("aside",m({className:T},j,{style:A}),a.createElement("div",{className:"".concat(E,"-children")},n.props.children),p||n.state.below&&k?N:null)},n.uniqueId=k("ant-sider-"),"undefined"!=typeof window&&(r=window.matchMedia),r&&e.breakpoint&&e.breakpoint in C&&(n.mql=r("(max-width: ".concat(C[e.breakpoint],")"))),o="collapsed"in e?e.collapsed:e.defaultCollapsed,n.state={collapsed:o,below:!1},n}return O(t,e),g(t,[{key:"componentDidMount",value:function(){this.mql&&(this.mql.addListener(this.responsiveHandler),this.responsiveHandler(this.mql)),this.props.siderHook&&this.props.siderHook.addSider(this.uniqueId)}},{key:"componentWillUnmount",value:function(){this.mql&&this.mql.removeListener(this.responsiveHandler),this.props.siderHook&&this.props.siderHook.removeSider(this.uniqueId)}},{key:"render",value:function(){var e=this.state.collapsed,t=this.props.collapsedWidth;return a.createElement(P.Provider,{value:{siderCollapsed:e,collapsedWidth:t}},a.createElement(p.a,null,this.renderSider))}}],[{key:"getDerivedStateFromProps",value:function(e){return"collapsed"in e?{collapsed:e.collapsed}:null}}]),t}(a.Component);_.defaultProps={collapsible:!1,defaultCollapsed:!1,reverseArrow:!1,width:200,collapsedWidth:80,style:{},theme:"dark"},Object(i.polyfill)(_);var N=function(e){function t(){return b(this,t),w(this,x(t).apply(this,arguments))}return O(t,e),g(t,[{key:"render",value:function(){var e=this;return a.createElement(u.a.Consumer,null,(function(t){return a.createElement(_,m({},t,e.props))}))}}]),t}(a.Component)},96:function(e,t,n){"use strict";n.d(t,"a",(function(){return w}));var r=n(0),o=n(44),a=n.n(o),i=n(57),l=n.n(i),c=n(85);function s(e){return(s="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e})(e)}function u(e){return function(e){if(Array.isArray(e)){for(var t=0,n=new Array(e.length);t<e.length;t++)n[t]=e[t];return n}}(e)||function(e){if(Symbol.iterator in Object(e)||"[object Arguments]"===Object.prototype.toString.call(e))return Array.from(e)}(e)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance")}()}function p(){return(p=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}function f(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function d(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}function h(e,t,n){return t&&d(e.prototype,t),n&&d(e,n),e}function y(e,t){return!t||"object"!==s(t)&&"function"!=typeof t?function(e){if(void 0===e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return e}(e):t}function m(e){return(m=Object.setPrototypeOf?Object.getPrototypeOf:function(e){return e.__proto__||Object.getPrototypeOf(e)})(e)}function b(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function");e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,writable:!0,configurable:!0}}),t&&v(e,t)}function v(e,t){return(v=Object.setPrototypeOf||function(e,t){return e.__proto__=t,e})(e,t)}var g=function(e,t){var n={};for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&t.indexOf(r)<0&&(n[r]=e[r]);if(null!=e&&"function"==typeof Object.getOwnPropertySymbols){var o=0;for(r=Object.getOwnPropertySymbols(e);o<r.length;o++)t.indexOf(r[o])<0&&Object.prototype.propertyIsEnumerable.call(e,r[o])&&(n[r[o]]=e[r[o]])}return n},w=l()({siderHook:{addSider:function(){return null},removeSider:function(){return null}}});function x(e){var t=e.suffixCls,n=e.tagName;return function(e){return function(o){function a(){var o;return f(this,a),(o=y(this,m(a).apply(this,arguments))).renderComponent=function(a){var i=a.getPrefixCls,l=o.props.prefixCls,c=i(t,l);return r.createElement(e,p({prefixCls:c,tagName:n},o.props))},o}return b(a,o),h(a,[{key:"render",value:function(){return r.createElement(c.a,null,this.renderComponent)}}]),a}(r.Component)}}var O=function(e){var t=e.prefixCls,n=e.className,o=e.children,i=e.tagName,l=g(e,["prefixCls","className","children","tagName"]),c=a()(n,t);return r.createElement(i,p({className:c},l),o)},E=function(e){function t(){var e;return f(this,t),(e=y(this,m(t).apply(this,arguments))).state={siders:[]},e}return b(t,e),h(t,[{key:"getSiderHook",value:function(){var e=this;return{addSider:function(t){e.setState((function(e){return{siders:[].concat(u(e.siders),[t])}}))},removeSider:function(t){e.setState((function(e){return{siders:e.siders.filter((function(e){return e!==t}))}}))}}}},{key:"render",value:function(){var e,t,n,o=this.props,i=o.prefixCls,l=o.className,c=o.children,s=o.hasSider,u=o.tagName,f=g(o,["prefixCls","className","children","hasSider","tagName"]),d=a()(l,i,(e={},t="".concat(i,"-has-sider"),n="boolean"==typeof s?s:this.state.siders.length>0,t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e));return r.createElement(w.Provider,{value:{siderHook:this.getSiderHook()}},r.createElement(u,p({className:d},f),c))}}]),t}(r.Component),S=x({suffixCls:"layout",tagName:"section"})(E),j=x({suffixCls:"layout-header",tagName:"header"})(O),C=x({suffixCls:"layout-footer",tagName:"footer"})(O),P=x({suffixCls:"layout-content",tagName:"main"})(O);S.Header=j,S.Footer=C,S.Content=P,t.b=S}}]);