(window.webpackJsonpAntd=window.webpackJsonpAntd||[]).push([[37],{10:function(t,e,r){"use strict";r.r(e);r(939);var n=r(940),a=(r(174),r(185)),o=r(0),c=r.n(o),i=r(100),u=r.n(i),l=r(56);function s(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){if(!(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t)))return;var r=[],n=!0,a=!1,o=void 0;try{for(var c,i=t[Symbol.iterator]();!(n=(c=i.next()).done)&&(r.push(c.value),!e||r.length!==e);n=!0);}catch(t){a=!0,o=t}finally{try{n||null==i.return||i.return()}finally{if(a)throw o}}return r}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}e.default=function(t){var e=s(Object(l.a)(t.id,t),2),r=e[0],i=e[1],f=r.content,b=r.attributes;return c.a.createElement(o.Suspense,{fallback:c.a.createElement(a.a,{loading:!0,avatar:!1,paragraph:{rows:6},title:!0,active:!0})},c.a.createElement(n.a,b,UniversalDashboard.renderComponent(f)),c.a.createElement(u.a,{callback:i,enabled:b.autoRefresh,timeout:b.refreshInterval}))}},56:function(t,e,r){"use strict";r.d(e,"a",(function(){return m}));var n=r(0);function a(t){return function(t){if(Array.isArray(t)){for(var e=0,r=new Array(t.length);e<t.length;e++)r[e]=t[e];return r}}(t)||function(t){if(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t))return Array.from(t)}(t)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance")}()}function o(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function c(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?o(Object(r),!0).forEach((function(e){i(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):o(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}function i(t,e,r){return e in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}function u(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){if(!(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t)))return;var r=[],n=!0,a=!1,o=void 0;try{for(var c,i=t[Symbol.iterator]();!(n=(c=i.next()).done)&&(r.push(c.value),!e||r.length!==e);n=!0);}catch(t){a=!0,o=t}finally{try{n||null==i.return||i.return()}finally{if(a)throw o}}return r}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}function l(t,e){if(null==t)return{};var r,n,a=function(t,e){if(null==t)return{};var r,n,a={},o=Object.keys(t);for(n=0;n<o.length;n++)r=o[n],e.indexOf(r)>=0||(a[r]=t[r]);return a}(t,e);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(t);for(n=0;n<o.length;n++)r=o[n],e.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(t,r)&&(a[r]=t[r])}return a}var s="setState",f="requestState",b="removeElement",p="addElement",y="clearElement",v="syncElement";function m(t,e){var r=e.content,o=l(e,["content"]),i=u(Object(n.useState)({content:r,attributes:o}),2),m=i[0],O=i[1];Object(n.useEffect)((function(){var e=UniversalDashboard.subscribe(t,d);return function(){return UniversalDashboard.unsubscribe(e)}}));var d=function(t,e){switch(e.type){case s:O((function(t){return{attributes:c({},t.attributes,{},e.state.attributes),content:e.state.content?Array.isArray(e.state.content)?e.state.content:Array.from(e.state.content):t.content}}));break;case f:console.log("REQUEST_STATE: ",m),UniversalDashboard.post("/api/internal/component/element/sessionState/".concat(e.requestId),c({},m));break;case p:O((function(t){return c({},t,{content:t.content.concat(e.elements)})}));break;case b:O((function(t){var e=t.content;return e.splice(-1,1),c({},t,{content:a(e)})}));break;case y:O((function(t){return c({},t,{content:[]})}));break;case v:h()}},h=Object(n.useCallback)((function(){UniversalDashboard.get("/api/internal/component/element/".concat(t),(function(t){return O((function(e){return c({},e,{content:t})}))}))}),[t]);return[m,h,O]}}}]);