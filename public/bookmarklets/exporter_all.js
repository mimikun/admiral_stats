(function(){var a=new Date,g=[a.getFullYear(),("0"+(a.getMonth()+1)).slice(-2),("0"+a.getDate()).slice(-2),"_",("0"+a.getHours()).slice(-2),("0"+a.getMinutes()).slice(-2),("0"+a.getSeconds()).slice(-2)].join(""),h="Personal/basicInfo Area/captureInfo TcBook/info EquipBook/info Campaign/history Campaign/info Campaign/present CharacterList/info EquipList/info Quest/info Event/info RoomItemList/info BlueprintList/info Exercise/info Cop/info".split(" ");if(window.location.href.match(/^https:\/\/kancolle-arcade.net\/ac\/#\/(area|list|pictureBook)/)){var d=(a=document.getElementById("admiral-stats-exporter"))&&a.getAttribute("data-token");d&&0===d.length&&(d=nil);var l=a&&"true"===a.getAttribute("data-skip-backup");h.forEach(function(a){var k=a.replace("/","_"),b=new XMLHttpRequest,m=k+"_"+g+".json";b.open("GET","https://kancolle-arcade.net/ac/api/"+a);b.setRequestHeader("X-Requested-With","XMLHttpRequest");b.responseType="blob";b.onload=function(){if(200===b.status){if(d){var c=new XMLHttpRequest;c.open("POST","https://www.admiral-stats.com/api/v1/import/"+k+"/"+g);c.setRequestHeader("Content-Type","application/json");c.setRequestHeader("Authorization","Bearer "+d);c.onload=function(){if(300<=c.status&&a===h[0]){var b="Admiral Stats \u30a8\u30af\u30b9\u30dd\u30fc\u30bf v1.15.0\uff1aAdmiral Stats \u3078\u306e\u30a2\u30c3\u30d7\u30ed\u30fc\u30c9\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002(status code = "+c.status;try{JSON.parse(c.response).errors.forEach(function(a){b+=", ";b+=a.message})}catch(n){}alert(b+")")}};c.send(b.response)}if(!l){var f=new Blob([b.response]);if(window.navigator.msSaveBlob)window.navigator.msSaveBlob(f,m);else{f=(window.URL||window.webkitURL).createObjectURL(f);var e=document.createElement("a");document.body.appendChild(e);e.download=k+"_"+g+".json";e.href=f;e.click();document.body.removeChild(e)}}}else a===h[0]&&alert("Admiral Stats \u30a8\u30af\u30b9\u30dd\u30fc\u30bf v1.10.1\uff1a\u63a5\u7d9a\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002\u30d7\u30ec\u30a4\u30e4\u30fc\u30ba\u30b5\u30a4\u30c8\u306b\u518d\u30ed\u30b0\u30a4\u30f3\u3057\u3066\u304b\u3089\u5b9f\u884c\u3057\u3066\u304f\u3060\u3055\u3044\u3002(status code = "+b.status+")")};b.send()})}else alert("Admiral Stats \u30a8\u30af\u30b9\u30dd\u30fc\u30bf v1.10.1\uff1a\u30d7\u30ec\u30a4\u30e4\u30fc\u30ba\u30b5\u30a4\u30c8\u306b\u30ed\u30b0\u30a4\u30f3\u3057\u3001\u6d77\u57df\u60c5\u5831\u304c\u8868\u793a\u3055\u308c\u305f\u72b6\u614b\u3067\u5b9f\u884c\u3057\u3066\u304f\u3060\u3055\u3044\u3002")})();
