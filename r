<html>
  <head>
    <script type="text/javascript">
      var key = '###KEY###';

      function copyText() {
        var textArea = document.createElement('textarea');
        textArea.value = key;
        document.body.appendChild(textArea);
        textArea.select();
        document.execCommand('copy');
        document.body.removeChild(textArea);
        alert('script copied to clipboard!');
        window.close();
      }

      window.onload = function() {
        // Resize the window
        window.resizeTo(520, 300);

        // Move the window to the center of the screen
        window.moveTo((screen.width - 520) / 2, (screen.height - 480) / 2);

        // Create and display the key and button
        var div = document.createElement('div');
        div.style.textAlign = 'center';
        div.innerHTML = '<h3>This is your whatsapp spam script, make sure you copy it</h3><p>' + key + '</p><button onclick="copyText()">Copy Decription key</button>';
        document.body.appendChild(div);
      }
    </script>
  </head>
  <body>
    <h1></h1>
  </body>
</html>
