(window.webpackJsonpAntd=window.webpackJsonpAntd||[]).push([[16],{11:function(t,e,n){"use strict";n.r(e);n(180);var r=n(187),o=(n(943),n(944)),a=n(0),c=n.n(a),i=n(102),u=n.n(i),l=n(58);function s(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){if(!(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t)))return;var n=[],r=!0,o=!1,a=void 0;try{for(var c,i=t[Symbol.iterator]();!(r=(c=i.next()).done)&&(n.push(c.value),!e||n.length!==e);r=!0);}catch(t){o=!0,a=t}finally{try{r||null==i.return||i.return()}finally{if(o)throw a}}return n}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}e.default=function(t){var e=s(Object(l.a)(t.id,t),2),n=e[0],i=e[1],f=n.content,b=n.attributes;return c.a.createElement(a.Suspense,{fallback:null},c.a.createElement(r.a,{loading:!f,paragraph:{rows:4},avatar:!1},c.a.createElement(o.a,b,UniversalDashboard.renderComponent(f))),c.a.createElement(u.a,{callback:i,enabled:b.autoRefresh,timeout:b.refreshInterval}))}},58:function(t,e,n){"use strict";n.d(e,"a",(function(){return v}));var r=n(0);function o(t){return function(t){if(Array.isArray(t)){for(var e=0,n=new Array(t.length);e<t.length;e++)n[e]=t[e];return n}}(t)||function(t){if(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t))return Array.from(t)}(t)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance")}()}function a(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(t);e&&(r=r.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,r)}return n}function c(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?a(Object(n),!0).forEach((function(e){i(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}function i(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}function u(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){if(!(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t)))return;var n=[],r=!0,o=!1,a=void 0;try{for(var c,i=t[Symbol.iterator]();!(r=(c=i.next()).done)&&(n.push(c.value),!e||n.length!==e);r=!0);}catch(t){o=!0,a=t}finally{try{r||null==i.return||i.return()}finally{if(o)throw a}}return n}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}function l(t,e){if(null==t)return{};var n,r,o=function(t,e){if(null==t)return{};var n,r,o={},a=Object.keys(t);for(r=0;r<a.length;r++)n=a[r],e.indexOf(n)>=0||(o[n]=t[n]);return o}(t,e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);for(r=0;r<a.length;r++)n=a[r],e.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(t,n)&&(o[n]=t[n])}return o}var s="setState",f="requestState",b="removeElement",p="addElement",y="clearElement",m="syncElement";function v(t,e){var n=e.content,a=l(e,["content"]),i=u(Object(r.useState)({content:n,attributes:a}),2),v=i[0],O=i[1];Object(r.useEffect)((function(){var e=UniversalDashboard.subscribe(t,d);return function(){return UniversalDashboard.unsubscribe(e)}}));var d=function(t,e){switch(e.type){case s:O((function(t){return{attributes:c({},t.attributes,{},e.state.attributes),content:e.state.content?Array.isArray(e.state.content)?e.state.content:Array.from(e.state.content):t.content}}));break;case f:console.log("REQUEST_STATE: ",v),UniversalDashboard.post("/api/internal/component/element/sessionState/".concat(e.requestId),c({},v));break;case p:O((function(t){return c({},t,{content:t.content.concat(e.elements)})}));break;case b:O((function(t){var e=t.content;return e.splice(-1,1),c({},t,{content:o(e)})}));break;case y:O((function(t){return c({},t,{content:[]})}));break;case m:h()}},h=Object(r.useCallback)((function(){UniversalDashboard.get("/api/internal/component/element/".concat(t),(function(t){return O((function(e){return c({},e,{content:t})}))}))}),[t]);return[v,h,O]}}}]);