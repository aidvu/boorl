{if $error == true}
<div class="center info">
    Cannot get data for shortcode:<br/><br/>
    <span class="highlight">{$key}</span>
</div>
{else}
<div class="tableContainer center">
    <div class="wrapTwo">
        {foreach from=$statisticsData key=key item=data}
            <div>
                <table class="statistics">
                    <tr>
                        <th>{$key}</th>
                        <th></th>
                    </tr>
                    {foreach from=$data item=item}
                        <tr>
                            <td>{$item[0]}</td>
                            <td class="number">{$item[1]}</td>
                        </tr>
                    {/foreach}
                </table>
            </div>
        {/foreach}
    </div>
</div>
{/if}
