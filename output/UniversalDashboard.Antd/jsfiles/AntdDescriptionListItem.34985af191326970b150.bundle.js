(window.webpackJsonpAntd=window.webpackJsonpAntd||[]).push([[17],{10:function(t,e,n){"use strict";n.r(e);n(346);var r=n(1085),s=n(0),a=n.n(s),o=n(215),j=n.n(o),c=n(180);function i(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){if(!(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t)))return;var n=[],r=!0,s=!1,a=void 0;try{for(var o,j=t[Symbol.iterator]();!(r=(o=j.next()).done)&&(n.push(o.value),!e||n.length!==e);r=!0);}catch(t){s=!0,a=t}finally{try{r||null==j.return||j.return()}finally{if(s)throw a}}return n}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}e.default=function(t){var e=i(Object(c.a)(t.id,t),2),n=e[0],s=e[1],o=n.content,u=n.attributes;return a.a.createElement(r.a.Item,{label:u.label,key:u.id,id:u.id,span:u.span},UniversalDashboard.renderComponent(o),a.a.createElement(j.a,{callback:s,timeout:u.refreshInterval,enabled:u.autoRefresh}))}},180:function(t,e,n){"use strict";n.d(e,"a",(function(){return p}));var r=n(0);function s(t){return function(t){if(Array.isArray(t)){for(var e=0,n=new Array(t.length);e<t.length;e++)n[e]=t[e];return n}}(t)||function(t){if(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t))return Array.from(t)}(t)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance")}()}function a(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(t);e&&(r=r.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,r)}return n}function o(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?a(n,!0).forEach((function(e){j(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):a(n).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}function j(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}function c(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){if(!(Symbol.iterator in Object(t)||"[object Arguments]"===Object.prototype.toString.call(t)))return;var n=[],r=!0,s=!1,a=void 0;try{for(var o,j=t[Symbol.iterator]();!(r=(o=j.next()).done)&&(n.push(o.value),!e||n.length!==e);r=!0);}catch(t){s=!0,a=t}finally{try{r||null==j.return||j.return()}finally{if(s)throw a}}return n}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}function i(t,e){if(null==t)return{};var n,r,s=function(t,e){if(null==t)return{};var n,r,s={},a=Object.keys(t);for(r=0;r<a.length;r++)n=a[r],e.indexOf(n)>=0||(s[n]=t[n]);return s}(t,e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);for(r=0;r<a.length;r++)n=a[r],e.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(t,n)&&(s[n]=t[n])}return s}var u="setState",l="requestState",b="removeElement",f="addElement",m="clearElement",y="syncElement";function p(t,e){var n=e.content,a=i(e,["content"]),j=c(Object(r.useState)({content:n,attributes:a}),2),p=j[0],d=j[1];Object(r.useEffect)((function(){var e=UniversalDashboard.subscribe(t,h);return function(){return UniversalDashboard.unsubscribe(e)}}),[t,e]);var h=Object(r.useCallback)((function(t,e){switch(e.type){case u:d({attributes:o({},p.attributes,{},e.state.attributes),content:o({},p.content,{},e.state.content)});break;case l:UniversalDashboard.post("/api/internal/component/element/sessionState/".concat(e.requestId),o({},p));break;case f:d((function(t){return o({},t,{content:t.content.concat(e.elements)})}));break;case b:d((function(t){var e=t.content;return e.splice(-1,1),o({},t,{content:s(e)})}));break;case m:d((function(t){return o({},t,{content:[]})}));break;case y:v()}}),[event]),v=Object(r.useCallback)((function(){UniversalDashboard.get("/api/internal/component/element/".concat(t),(function(t){return d((function(e){return o({},e,{content:t})}))}))}),[t]);return[p,v,d]}},189:function(t,e,n){var r={"./af":47,"./af.js":47,"./ar":48,"./ar-dz":49,"./ar-dz.js":49,"./ar-kw":50,"./ar-kw.js":50,"./ar-ly":51,"./ar-ly.js":51,"./ar-ma":52,"./ar-ma.js":52,"./ar-sa":53,"./ar-sa.js":53,"./ar-tn":54,"./ar-tn.js":54,"./ar.js":48,"./az":55,"./az.js":55,"./be":56,"./be.js":56,"./bg":57,"./bg.js":57,"./bm":58,"./bm.js":58,"./bn":59,"./bn.js":59,"./bo":60,"./bo.js":60,"./br":61,"./br.js":61,"./bs":62,"./bs.js":62,"./ca":63,"./ca.js":63,"./cs":64,"./cs.js":64,"./cv":65,"./cv.js":65,"./cy":66,"./cy.js":66,"./da":67,"./da.js":67,"./de":68,"./de-at":69,"./de-at.js":69,"./de-ch":70,"./de-ch.js":70,"./de.js":68,"./dv":71,"./dv.js":71,"./el":72,"./el.js":72,"./en-SG":73,"./en-SG.js":73,"./en-au":74,"./en-au.js":74,"./en-ca":75,"./en-ca.js":75,"./en-gb":76,"./en-gb.js":76,"./en-ie":77,"./en-ie.js":77,"./en-il":78,"./en-il.js":78,"./en-nz":79,"./en-nz.js":79,"./eo":80,"./eo.js":80,"./es":81,"./es-do":82,"./es-do.js":82,"./es-us":83,"./es-us.js":83,"./es.js":81,"./et":84,"./et.js":84,"./eu":85,"./eu.js":85,"./fa":86,"./fa.js":86,"./fi":87,"./fi.js":87,"./fo":88,"./fo.js":88,"./fr":89,"./fr-ca":90,"./fr-ca.js":90,"./fr-ch":91,"./fr-ch.js":91,"./fr.js":89,"./fy":92,"./fy.js":92,"./ga":93,"./ga.js":93,"./gd":94,"./gd.js":94,"./gl":95,"./gl.js":95,"./gom-latn":96,"./gom-latn.js":96,"./gu":97,"./gu.js":97,"./he":98,"./he.js":98,"./hi":99,"./hi.js":99,"./hr":100,"./hr.js":100,"./hu":101,"./hu.js":101,"./hy-am":102,"./hy-am.js":102,"./id":103,"./id.js":103,"./is":104,"./is.js":104,"./it":105,"./it-ch":106,"./it-ch.js":106,"./it.js":105,"./ja":107,"./ja.js":107,"./jv":108,"./jv.js":108,"./ka":109,"./ka.js":109,"./kk":110,"./kk.js":110,"./km":111,"./km.js":111,"./kn":112,"./kn.js":112,"./ko":113,"./ko.js":113,"./ku":114,"./ku.js":114,"./ky":115,"./ky.js":115,"./lb":116,"./lb.js":116,"./lo":117,"./lo.js":117,"./lt":118,"./lt.js":118,"./lv":119,"./lv.js":119,"./me":120,"./me.js":120,"./mi":121,"./mi.js":121,"./mk":122,"./mk.js":122,"./ml":123,"./ml.js":123,"./mn":124,"./mn.js":124,"./mr":125,"./mr.js":125,"./ms":126,"./ms-my":127,"./ms-my.js":127,"./ms.js":126,"./mt":128,"./mt.js":128,"./my":129,"./my.js":129,"./nb":130,"./nb.js":130,"./ne":131,"./ne.js":131,"./nl":132,"./nl-be":133,"./nl-be.js":133,"./nl.js":132,"./nn":134,"./nn.js":134,"./pa-in":135,"./pa-in.js":135,"./pl":136,"./pl.js":136,"./pt":137,"./pt-br":138,"./pt-br.js":138,"./pt.js":137,"./ro":139,"./ro.js":139,"./ru":140,"./ru.js":140,"./sd":141,"./sd.js":141,"./se":142,"./se.js":142,"./si":143,"./si.js":143,"./sk":144,"./sk.js":144,"./sl":145,"./sl.js":145,"./sq":146,"./sq.js":146,"./sr":147,"./sr-cyrl":148,"./sr-cyrl.js":148,"./sr.js":147,"./ss":149,"./ss.js":149,"./sv":150,"./sv.js":150,"./sw":151,"./sw.js":151,"./ta":152,"./ta.js":152,"./te":153,"./te.js":153,"./tet":154,"./tet.js":154,"./tg":155,"./tg.js":155,"./th":156,"./th.js":156,"./tl-ph":157,"./tl-ph.js":157,"./tlh":158,"./tlh.js":158,"./tr":159,"./tr.js":159,"./tzl":160,"./tzl.js":160,"./tzm":161,"./tzm-latn":162,"./tzm-latn.js":162,"./tzm.js":161,"./ug-cn":163,"./ug-cn.js":163,"./uk":164,"./uk.js":164,"./ur":165,"./ur.js":165,"./uz":166,"./uz-latn":167,"./uz-latn.js":167,"./uz.js":166,"./vi":168,"./vi.js":168,"./x-pseudo":169,"./x-pseudo.js":169,"./yo":170,"./yo.js":170,"./zh-cn":171,"./zh-cn.js":171,"./zh-hk":172,"./zh-hk.js":172,"./zh-tw":173,"./zh-tw.js":173};function s(t){var e=a(t);return n(e)}function a(t){if(!n.o(r,t)){var e=new Error("Cannot find module '"+t+"'");throw e.code="MODULE_NOT_FOUND",e}return r[t]}s.keys=function(){return Object.keys(r)},s.resolve=a,t.exports=s,s.id=189}}]);
//# sourceMappingURL=AntdDescriptionListItem.34985af191326970b150.bundle.map