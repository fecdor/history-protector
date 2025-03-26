<!DOCTYPE html>
<html>
<head>
    <title>Node.js Installation Guide</title>
    <HTA:APPLICATION 
        APPLICATIONNAME="NodeJS Installer"
        BORDER="thin"
        CAPTION="yes"
        SHOWINTASKBAR="yes"
        SINGLEINSTANCE="yes"
        WINDOWSTATE="normal"
    />
    <script>
        function openLink(url) {
            var shell = new ActiveXObject("WScript.Shell");
            shell.Run(url);
        }
    </script>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
            font-size: 36px;
        }
        p, li {
            font-size: 24px;
            line-height: 1.8;
        }
        a {
            font-size: 24px;
            color: blue;
            text-decoration: underline;
            cursor: pointer;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 15px;
            border: none;
            cursor: pointer;
            font-size: 20px;
            margin-top: 15px;
            border-radius: 5px;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>How to Install GO</h1>
    <p>Follow these steps to install go scripting language on your computer:</p>
    <ol>
        <li>download the installer from the <a href="#" onclick="openLink('https://go.dev/dl/')">GO official website</a> or use the direct download link below.</li>
        <li>Run the installer and follow the on-screen instructions.</li>
        <li>After installation, search for <b>go</b> in your applications to check if GO is installed.</li>
    </ol>
    <button onclick="openLink('https://go.dev/dl/go1.24.1.windows-amd64.msi')">GO Download Link</button>
</body>
</html>
