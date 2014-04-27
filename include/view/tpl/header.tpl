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
    {literal}
    /**
     * Utility to wrap the different behaviors between W3C-compliant browsers
     * and IE when adding event handlers.
     *
     * @param {Object} element Object on which to attach the event listener.
     * @param {string} type A string representing the event type to listen for
     *     (e.g. load, click, etc.).
     * @param {function()} callback The function that receives the notification.
     */
    function addListener(element, type, callback) {
        if (element.addEventListener) element.addEventListener(type, callback);
        else if (element.attachEvent) element.attachEvent('on' + type, callback);
    }
    {/literal}
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
