(window.webpackJsonpAntd=window.webpackJsonpAntd||[]).push([[20],{17:function(t,e,n){"use strict";n.r(e);n(974);var r=n(1112),o=n(0),a=n.n(o),c=n(92),i=n.n(c),u=n(53);function l(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){if(!(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t)))return;var n=[],r=!0,o=!1,a=void 0;try{for(var c,i=t[Symbol.iterator]();!(r=(c=i.next()).done)&&(n.push(c.value),!e||n.length!==e);r=!0);}catch(t){o=!0,a=t}finally{try{r||null==i.return||i.return()}finally{if(o)throw a}}return n}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}e.default=function(t){var e=l(Object(u.a)(t.id,t),2),n=e[0],o=e[1],c=n.content,s=n.attributes;return a.a.createElement(r.a.Item,{label:s.label,key:s.id,id:s.id,span:s.span},UniversalDashboard.renderComponent(c),a.a.createElement(i.a,{callback:o,timeout:s.refreshInterval,enabled:s.autoRefresh}))}},53:function(t,e,n){"use strict";n.d(e,"a",(function(){return d}));var r=n(0);function o(t){return function(t){if(Array.isArray(t)){for(var e=0,n=new Array(t.length);e<t.length;e++)n[e]=t[e];return n}}(t)||function(t){if(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t))return Array.from(t)}(t)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance")}()}function a(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(t);e&&(r=r.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,r)}return n}function c(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?a(Object(n),!0).forEach((function(e){i(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}function i(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}function u(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){if(!(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t)))return;var n=[],r=!0,o=!1,a=void 0;try{for(var c,i=t[Symbol.iterator]();!(r=(c=i.next()).done)&&(n.push(c.value),!e||n.length!==e);r=!0);}catch(t){o=!0,a=t}finally{try{r||null==i.return||i.return()}finally{if(o)throw a}}return n}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}function l(t,e){if(null==t)return{};var n,r,o=function(t,e){if(null==t)return{};var n,r,o={},a=Object.keys(t);for(r=0;r<a.length;r++)n=a[r],e.indexOf(n)>=0||(o[n]=t[n]);return o}(t,e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);for(r=0;r<a.length;r++)n=a[r],e.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(t,n)&&(o[n]=t[n])}return o}var s="setState",f="requestState",b="removeElement",p="addElement",y="clearElement",O="syncElement";function d(t,e){var n=e.content,a=l(e,["content"]),i=u(Object(r.useState)({content:n,attributes:a}),2),d=i[0],m=i[1];Object(r.useEffect)((function(){var e=UniversalDashboard.subscribe(t,v);return function(){return UniversalDashboard.unsubscribe(e)}}));var v=function(t,e){switch(e.type){case s:m((function(t){return{attributes:c({},t.attributes,{},e.state.attributes),content:e.state.content?Array.isArray(e.state.content)?e.state.content:Array.from(e.state.content):t.content}}));break;case f:console.log("REQUEST_STATE: ",d),UniversalDashboard.post("/api/internal/component/element/sessionState/".concat(e.requestId),c({},d));break;case p:m((function(t){return c({},t,{content:t.content.concat(e.elements)})}));break;case b:m((function(t){var e=t.content;return e.splice(-1,1),c({},t,{content:o(e)})}));break;case y:m((function(t){return c({},t,{content:[]})}));break;case O:j()}},j=Object(r.useCallback)((function(){UniversalDashboard.get("/api/internal/component/element/".concat(t),(function(t){return m((function(e){return c({},e,{content:t})}))}))}),[t]);return[d,j,m]}}}]);