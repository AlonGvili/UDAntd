(window.webpackJsonpUDMarkdown=window.webpackJsonpUDMarkdown||[]).push([[15],{257:function(e,s,t){"use strict";t.r(s),t.d(s,"default",(function(){return r}));var l=t(0),n=t.n(l);class r extends n.a.Component{render(){const{value:e,styles:s}=this.props;let t;return s.hasOwnProperty("list")&&(s.list.hasOwnProperty("ol")?t=s.list.ol:s.list.hasOwnProperty("ul")&&(t=s.list.ul)),e.ordered?n.a.createElement("ol",{className:"ud-markdown-list-ol",style:{...t}},e.children):n.a.createElement("ul",{className:"ud-markdown-list-ul",style:{...t}},e.children)}}}}]);