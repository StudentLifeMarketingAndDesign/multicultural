$Header
<main class="main-content__container" id="main-content__container">

	<!-- Background Image Feature -->
	<% if $BackgroundImage %>
		<% include FeaturedImage %>
	<% end_if %>
	$Breadcrumbs
	
<% if not $BackgroundImage %>
	<div class="column row">
		<div class="main-content__header">
			<h1>$Title</h1>
		</div>
	</div>
<% end_if %>

$BlockArea(BeforeContent)

<div class="row">

	<article role="main" class="main-content main-content--with-padding <% if $Children || $Menu(2) || $SidebarBlocks ||  $SidebarView.Widgets %>main-content--with-sidebar<% else %>main-content--full-width<% end_if %>">
		$BlockArea(BeforeContentConstrained)
		<div class="main-content__text">
			$Content
		</div>
		$BlockArea(AfterContentConstrained)
		$Form
		<% if $ShowChildPages %>
			<% include ChildPages %>
		<% end_if %>
	</article>
	<aside class="sidebar dp-sticky">
		<% include SideNav %>
		<% if $SideBarView %>
			$SideBarView
		<% end_if %>
		$BlockArea(Sidebar)
	</aside>
</div>
$BlockArea(AfterContent)

</main>
