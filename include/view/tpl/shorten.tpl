<div class="main center">
    <form method="post">
        <input type="hidden" name="action" id="action" value="shorten"/>
        <div>
            <div class="longBubble">
            </div>
            <div class="explanation">
            </div>
            <div class="shortBubble">
            </div>
        </div>
        <div class="row center">
            <div class="rowContainer center">
                <div class="formElement searchLong">
                    <input class="url" type="text" name="url" id="url" value="{$url}" />
                </div>
                <div class="formElement">
                    <input class="submit" type="submit" id="submit" value=""/>
                </div>
                <div class="formElement searchShort">
                    <input class="url" type="text" id="short" value="" readonly/>
                </div>
            </div>
        </div>
        {if $submitted}
        <div class="row">
            <div class="rowContainer center info">
                <br />
                To check where the shortlink leads, just add an "=" (equals) sign at the end of the shortlink: <br />
                <a href="{$shortCodeURL}=" />{$shortCodeURL}=</a>
                <br /><br />
                To check the shortlink stats, just add a "+" (plus) sign at the end of the shortlink: <br />
                <a href="{$shortCodeURL}+" />{$shortCodeURL}+</a><br />
            </div>
        </div>
        <script type="text/javascript">
            document.getElementById("short").value='{$shortCodeURL}';
            document.getElementById("short").select();
        </script>
        {else}
        <script type="text/javascript">
            document.getElementById("url").select();
        </script>
        {/if}
    </form>
</div>
<script>
    var submitButton = document.getElementById('submit');

    addListener(submitButton, 'click', function() {
        var url = document.getElementById('url');
        _gaq.push(['_trackEvent', 'Button', 'Shorten', url.value]);
    });
</script>
