(function(){var a=new Date,e=[a.getFullYear(),("0"+(a.getMonth()+1)).slice(-2),("0"+a.getDate()).slice(-2),"_",("0"+a.getHours()).slice(-2),("0"+a.getMinutes()).slice(-2),("0"+a.getSeconds()).slice(-2)].join(""),f="Personal/basicInfo Area/captureInfo TcBook/info EquipBook/info Campaign/history Campaign/info Campaign/present CharacterList/info EquipList/info Quest/info Event/info RoomItemList/info".split(" ");window.location.href.match(/^https:\/\/kancolle-arcade.net\/ac\/#\/(area|list|pictureBook)/)?f.forEach(function(a){var b=new XMLHttpRequest,g=a.replace("/","_")+"_"+e+".json";b.open("GET","https://kancolle-arcade.net/ac/api/"+a);b.setRequestHeader("X-Requested-With","XMLHttpRequest");b.responseType="blob";b.onload=function(){if(200===b.status){var d=new Blob([b.response]);if(window.navigator.msSaveBlob)window.navigator.msSaveBlob(d,g);else{var d=(window.URL||window.webkitURL).createObjectURL(d),c=document.createElement("a");document.body.appendChild(c);c.download=a.replace("/","_")+"_"+e+".json";c.href=d;c.click();document.body.removeChild(c)}}else a===f[0]&&alert("Admiral Stats \u30a8\u30af\u30b9\u30dd\u30fc\u30bf v1.1.2\uff1a\u63a5\u7d9a\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002\u30d7\u30ec\u30a4\u30e4\u30fc\u30ba\u30b5\u30a4\u30c8\u306b\u518d\u30ed\u30b0\u30a4\u30f3\u3057\u3066\u304b\u3089\u5b9f\u884c\u3057\u3066\u304f\u3060\u3055\u3044\u3002(status code = "+b.status+")")};b.send()}):alert("Admiral Stats \u30a8\u30af\u30b9\u30dd\u30fc\u30bf v1.1.2\uff1a\u30d7\u30ec\u30a4\u30e4\u30fc\u30ba\u30b5\u30a4\u30c8\u306b\u30ed\u30b0\u30a4\u30f3\u3057\u3001\u6d77\u57df\u60c5\u5831\u304c\u8868\u793a\u3055\u308c\u305f\u72b6\u614b\u3067\u5b9f\u884c\u3057\u3066\u304f\u3060\u3055\u3044\u3002")})();
