$Header
<main class="main-content__container" id="main-content__container">

<!-- Background Image Feature -->
<% if $BackgroundImage %>
<div class="row">

   <div class="small-12 large-5 columns">
        <div class="main-content__header">
            $Breadcrumbs
            <h1>$Title</h1>
        </div>
        <div class="main-content__text" style="margin-top: 20px;">
            $Content
        </div>
    </div>
    <div class="small-12 large-7 columns">
        <img class="month__img" src="$BackgroundImage.URL" alt="" role="presentation" />
    </div>
</div>
<% end_if %>
<%--
    <div class="column row">
        <div class="main-content__header">
            $Breadcrumbs
            <h1>$Title</h1>
        </div>
    </div>
 --%>

$BeforeContent

<div class="<% if $Children || $Menu(2) || $SidebarArea.Elements ||  $SidebarView.Widgets %><% else %>column<% end_if %> row">

    <div class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding<% end_if %> <% if $Children || $Menu(2) || $SidebarArea.Elements ||  $SidebarView.Widgets %>main-content--with-sidebar<% else %>main-content--full-width<% end_if %>">
        $BeforeContentConstrained
        <% if $MainImage %>
            <img class="main-content__main-img" src="$MainImage.ScaleMaxWidth(500).URL" alt="" role="presentation"/>
        <% end_if %>
        <div class="main-content__text">

            $AfterContentConstrained
            $Form
        </div>

        <% if $ShowChildPages %>
            <% include ChildPages %>
        <% end_if %>

    </div>
    <aside class="sidebar dp-sticky">
        <% include SideNav %>
        <% if $SideBarView %>
            $SideBarView
        <% end_if %>
        $SidebarArea
    </aside>
</div>
$AfterContent


</main>
