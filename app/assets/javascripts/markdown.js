window.onload = function() {

  // 要素を取得
  var editorTA = document.querySelector('.editor .ta');

  var sync = function() {
      var value = editorTA.value; // テキストエリアから値を取得
      var md = marked(value); // マークダウンに変換
      document.getElementById("hello").innerHTML = md;
  };
};
