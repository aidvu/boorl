<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>BooRL, The URL Shortener</title>
    <meta name="description" content="URL Shortening service">
    <meta name="author" content="Andrija Vucinic">
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="images/favicon.ico" />

	{if !empty($gaCode)}

    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', '{$gaCode}']);
        {if !empty($domain)}
        _gaq.push(['_setDomainName', '{$domain}']);
        {/if}

        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    {/if}
    </script>
</head>
<body>
<div class="container center">
    <div class="header">
        <div class="center">
            <a href="http://{$link}">
                <img class="logo" src="images/logo.png" alt="Logo" />
            </a>
        </div>
    </div>
    <div class="center headerShadow"></div>
