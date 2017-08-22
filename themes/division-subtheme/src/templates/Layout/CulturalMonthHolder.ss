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
		<article role="main" class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding<% end_if %> <% if $Children || $Menu(2) || $SidebarBlocks ||  $SidebarView.Widgets %>main-content--with-sidebar<% else %>main-content--full-width<% end_if %>">
			$BlockArea(BeforeContentConstrained)
			<div class="main-content__text">
				$Content
			</div>
			$BlockArea(AfterContentConstrained)
			$Form
		</article>
	</div> 
	<div class="month-grid expanded row small-up-1 medium-up-2 large-up-3 ">
		<% loop $Children %>
			<a class="column month-grid__link" href="$Link">
				<img class="month-grid__img" src="{$BackgroundImage.FocusFill(410,214).URL}" alt="" role="presentation" />
				<div class="month-grid__content">
					<h2 class="month-grid__header">$Title</h2>
					<p class="month-grid__summary">$Content.LimitCharacters(50)</p>
				</div>
			</a>
		<% end_loop %>
	</div>

	$BlockArea(AfterContent)

</main>
