{include file=shared:errorlist.tpl}

<div id="current-theme">

<h2>{$panelstrings.head1}</h2>
<img src="{$current_theme.preview}" alt="{$current_theme.name}" />
<h5>{$current_theme.title} &#8212; {$current_theme.author|default:$panelstrings.noauthor}</h5>
{$current_theme.description|default:$panelstrings.nodescr}
</div>


<div id="available-themes">

<h2>{$panelstrings.head2}</h2>
<p>{$panelstrings.descr}</p>

{if $available_themes}

<ul>
{foreach from=$available_themes item=thm}
	<li>
		<h5><a href="{$action_url|cmd_link:select:$thm.id}">{$thm.title}</a></h5>
		<a href="{$action_url|cmd_link:select:$thm.id}"><img src="{$thm.preview}" alt="{$thm.name}" /></a>
		
		<p>{$thm.description|default:$panelstrings.nodescr}</p>
		
	</li>
{/foreach}
</ul>

{/if}

</div>