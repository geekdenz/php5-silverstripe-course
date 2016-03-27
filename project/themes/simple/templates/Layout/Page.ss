<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">
	<article>
		<h1>$Title</h1>
		<div class="content">
			<h2><a href="$Url">$Url</a></h2>
			<% if $IsSame %>
			<p>ist aktuell</p>
			<% else %>
			<p>muss aktualisiert werden</p>
			<% end_if %>
		</div>
	</article>
		$Form
		$CommentsForm
</div>