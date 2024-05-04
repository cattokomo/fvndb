local fm = require("fullmoon")
local mimetypes = require("mimetypes").copy()

fm.setRoute("/", function(req)
    return fm.serveResponse(200, { ContentType = mimetypes.extensions.html }, [[
<html>
<head>
    <title>Furry Visual Novels Database</title>
    <style>
        a:link {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <p>
    Welcome to Furry Visual Novels Database (or FVNDB for short)!<br><br>

    This page is just a placeholder, this might changed in the future<br><br>

    This website is open-source and licensed under MIT license! See it's <a href="https://github.com/cattokomo/fvndb">Github Repository</a><br>
    Made by &nbsp;<a href="https://github.com/cattokomo"><img src="https://github.com/cattokomo.png" height="20" width="20" text-align="middle">&nbsp; Komo</a>
    </p>
</body>
</html>
]])
end)

fm.run({ port = tonumber(os.getenv("PORT") or 8080) })
