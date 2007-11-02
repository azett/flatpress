<p>{$lang.contact.descr}</p>
	
{validate id="name" message=$lang.contact.error.name append="error"}
{validate id="email" message=$lang.contact.error.email append="error"}
{validate id="www" message=$lang.contact.error.www append="error"}
{validate id="content" message=$lang.contact.error.content append="error"}

<form id="contactform" method="post"
	action="{$smarty.server.PHP_SELF}"
	enctype="multipart/form-data">
	
	{include file='shared:errorlist.tpl'}
	
	<fieldset><legend>{$lang.contact.fieldset1}</legend>
		<p><label class="textlabel" for="name">{$lang.contact.name}</label><br />
		<input type="text" name="name" id="name" {$error.name|notempty:'class="field-error"'} 
		value="{$values.name|stripslashes}" /></p>
		
		<p><label class="textlabel" for="email">{$lang.contact.email}</label><br />
		<input type="text" name="email" id="email" {$error.email|notempty:'class="field-error"'} 
		value="{$values.email|stripslashes}" /></p>
		
		<p><label class="textlabel" for="url">{$lang.contact.www}</label><br />
		<input type="text" name="url" id="url" {$error.url|notempty:'class="field-error"'} 
		value="{$values.url|stripslashes}" /></p>
		
		{comment_form}
		
	</fieldset>
	
	<fieldset><legend>{$lang.contact.fieldset2}</legend>
		<p><label for="content">{$lang.contact.comment}</label><br />
		<textarea name="content" id="content" {$error.content|notempty:'class="field-error"'} 
		rows="10" cols="74">{$values.content|stripslashes}</textarea></p>

	</fieldset>
	
	<div class="buttonbar">
	<input type="submit" name="submit" id="submit" value="{$lang.contact.submit}" />
	<input type="reset" name="reset" id="reset" value="{$lang.contact.reset}" />
	</div>

</form>