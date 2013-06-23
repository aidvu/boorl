<div class="info center">
    <p>The shortlink <br/>
        <span class="highlight">{$key}</span> <br/>
        leads to:</p>
    <br/>
    {if !empty($url)}
        <p> <a class="highlight" href="{$key}">{$url}</a> </p>
    {else}
        <p> <span class="highlight">Nowhere...</span> </p>
    {/if}
</div>
