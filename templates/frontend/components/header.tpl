{**
 * templates/frontend/components/header.tpl
 *
 * Multi-Journal Safe Header Override.
 * Scoped conditionally for journal "innovatics" to protect other journals on the portal.
 *}
{if $currentJournal && $currentJournal->getPath() == 'innovatics'}
	{if !$requestedPage || $requestedPage === 'index'}
		{* ========================================================================= *}
		{* INNOVATICS JOURNAL LANDING PAGE HEADER (LEXA THEME SUITE)                 *}
		{* ========================================================================= *}
		{strip}
			{assign var="showingLogo" value=false}
		{/strip}
		<!DOCTYPE html>
		<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
		{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
		{include file="frontend/components/headerHead.tpl"}
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Merriweather:ital,wght@0,700;0,900;1,400&display=swap" rel="stylesheet">
		<body class="pkp_page_index pkp_op_index" dir="{$currentLocaleLangDir|escape|default:"ltr"}">

			<div class="pkp_structure_page">

				{* 1. Top Utility Bar (Dark Navy #0A2540) *}
				<div class="lexa-topbar-wrapper">
					<div class="lexa-container lexa-topbar-inner">
						<div class="lexa-topbar-left">
							<span class="topbar-item">Open Access</span>
							<span class="topbar-sep">|</span>
							<span class="topbar-item">Peer-Reviewed</span>
							<span class="topbar-sep">|</span>
							<span class="topbar-item">e-ISSN: 2656-8993</span>
						</div>

						<div class="lexa-topbar-right">
							{if $isUserLoggedIn}
								<a href="{url page="user" op="profile"}" class="topbar-link">{$loggedInUsername|escape}</a>
								<span class="topbar-sep">|</span>
								<a href="{url page="login" op="signOut"}" class="topbar-link">Logout</a>
							{else}
								<a href="{url page="user" op="register"}" class="topbar-link">Register</a>
								<span class="topbar-sep">|</span>
								<a href="{url page="login"}" class="topbar-link">Login</a>
								<span class="topbar-sep">|</span>
								<a href="{url page="about" op="submissions"}" class="topbar-link topbar-link-highlight">Submit</a>
							{/if}
							<span class="topbar-sep">|</span>
							<div class="topbar-lang-dropdown">
								<i class="fa fa-globe"></i>
								<span>EN</span>
								<i class="fa fa-chevron-down lang-chevron"></i>
							</div>
						</div>
					</div>
				</div>

				{* 2. Main Brand Header & Integrated Search Bar *}
				<header class="lexa-header-wrapper" role="banner">
					{include file="frontend/components/skipLinks.tpl"}
					<div class="lexa-container lexa-header-inner">
						<div class="lexa-brand-block">
							<a href="{url page="index" router=$smarty.const.ROUTE_PAGE}" class="lexa-brand-link" title="INNOVATICS Portal">
								<img src="{$baseUrl}/public/journals/29/logo-innovatics.svg" alt="INNOVATICS Logo" class="lexa-brand-logo" />
							</a>
						</div>

						<div class="lexa-search-block">
							<form action="{url page="search" op="search"}" method="get" class="lexa-search-form">
								<input 
									type="text" 
									name="query" 
									class="lexa-search-input" 
									placeholder="Search for articles, authors, keywords..." 
									aria-label="Search articles"
									required 
								/>
								<button type="submit" class="lexa-search-btn" aria-label="Submit Search">
									<i class="fa fa-search"></i>
								</button>
							</form>
							<div class="lexa-search-sublinks">
								<a href="{url page="search" op="search"}" class="lexa-search-adv">Advanced Search</a>
							</div>
						</div>
					</div>
				</header>

				{* 3. Primary Navigation Bar *}
				<nav class="lexa-navbar-wrapper" aria-label="Main Navigation">
					<div class="lexa-container lexa-navbar-inner">
						<ul class="lexa-navbar-menu">
							<li class="menu-item active">
								<a href="{url page="index"}">Home</a>
							</li>
							<li class="menu-item">
								<a href="{url page="issue" op="archive"}">Archives</a>
							</li>
							<li class="menu-item">
								<a href="{url page="announcement"}">Announcements</a>
							</li>
							<li class="menu-item has-dropdown">
								<a href="{url page="about"}">About <i class="fa fa-chevron-down nav-chevron"></i></a>
								<ul class="dropdown-menu">
									<li><a href="{url page="about"}">About the Journal</a></li>
									<li><a href="{url page="about" op="submissions"}">Submissions</a></li>
									<li><a href="{url page="about" op="editorialTeam"}">Editorial Team</a></li>
								</ul>
							</li>
							<li class="menu-item">
								<a href="{url page="issue" op="current"}">Current</a>
							</li>
							{if !$isUserLoggedIn}
							<li class="menu-item">
								<a href="{url page="login"}">Login</a>
							</li>
							{/if}
						</ul>
					</div>
				</nav>

				{* 4. LEXA Hero Banner & Metrics Ribbon (Full Width Above Content & Sidebar) *}
				<div class="lexa-hero-container">
					<div class="lexa-hero-banner">
						<div class="lexa-hero-content">
							<div class="lexa-badge-pill">
								Open Access Journal
							</div>
							<h1 class="lexa-hero-title">
								<span class="title-serif">Journal</span>
								<span class="title-brand">INNOVATICS</span>
							</h1>
							<p class="lexa-hero-desc">
								Innovation in Research of Informatics (INNOVATICS) is a peer-reviewed scientific journal published by Universitas Siliwangi, dedicated to advancing informatics through high-quality, innovative research in machine learning, cybersecurity, IoT, and software systems.
							</p>
							<div class="lexa-hero-actions">
								<a href="{url page="about" op="submissions"}" class="lexa-btn lexa-btn-primary">
									Submit Manuscript <i class="fa fa-arrow-right"></i>
								</a>
								<a href="#homepageIssue" class="lexa-btn lexa-btn-outline">
									View Current Issue
								</a>
							</div>

							<!-- 4-Column Metrics Ribbon Placed Directly Underneath Submit Manuscript -->
							<div class="lexa-metrics-ribbon">
								<div class="lexa-metric-item">
									<div class="metric-icon"><i class="fa fa-file-text-o"></i></div>
									<div class="metric-info">
										<span class="metric-value">10+</span>
										<span class="metric-label">Articles Published</span>
									</div>
								</div>
								<div class="lexa-metric-item">
									<div class="metric-icon"><i class="fa fa-users"></i></div>
									<div class="metric-info">
										<span class="metric-value">34+</span>
										<span class="metric-label">Authors</span>
									</div>
								</div>
								<div class="lexa-metric-item">
									<div class="metric-icon"><i class="fa fa-globe"></i></div>
									<div class="metric-info">
										<span class="metric-value">6</span>
										<span class="metric-label">Countries</span>
									</div>
								</div>
								<div class="lexa-metric-item">
									<div class="metric-icon"><i class="fa fa-quote-left"></i></div>
									<div class="metric-info">
										<span class="metric-value">4.8</span>
										<span class="metric-label">CiteScore (2024)</span>
									</div>
								</div>
							</div>
						</div>

						<div class="lexa-hero-visual">
							<img src="{$baseUrl}/public/journals/29/hero-network.png" alt="LEXA Tech Network Visual" class="lexa-hero-img" />
						</div>
					</div>
				</div>

				{* Wrapper for page content and sidebars *}
				{if $isFullWidth}
					{assign var=hasSidebar value=0}
				{/if}
				<div class="pkp_structure_content{if $hasSidebar} has_sidebar{/if}">
					<div class="pkp_structure_main" role="main">
						<a id="pkp_content_main"></a>
	{else}
		{* ========================================================================= *}
		{* INNOVATICS ARTICLE & SUBPAGES - 100% ORIGINAL DEFAULT OJS HEADER          *}
		{* ========================================================================= *}
		{strip}
			{assign var="showingLogo" value=true}
			{if !$displayPageHeaderLogo}
				{assign var="showingLogo" value=false}
			{/if}
		{/strip}
		<!DOCTYPE html>
		<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
		{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
		{include file="frontend/components/headerHead.tpl"}
		<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}" dir="{$currentLocaleLangDir|escape|default:"ltr"}">

			<div class="pkp_structure_page">

				{* Header *}
				<header class="pkp_structure_head" id="headerNavigationContainer" role="banner">
					{* Skip to content nav links *}
					{include file="frontend/components/skipLinks.tpl"}

					<div class="pkp_head_wrapper">

						<div class="pkp_site_name_wrapper">
							<button class="pkp_site_nav_toggle">
								<span>Open Menu</span>
							</button>
							{if !$requestedPage || $requestedPage === 'index'}
								<h1 class="pkp_screen_reader">
									{if $currentContext}
										{$displayPageHeaderTitle|escape}
									{else}
										{$siteTitle|escape}
									{/if}
								</h1>
							{/if}
							<div class="pkp_site_name">
							{capture assign="homeUrl"}
								{url page="index" router=$smarty.const.ROUTE_PAGE}
							{/capture}
							{if $displayPageHeaderLogo}
								<a href="{$homeUrl}" class="is_img">
									<img src="{$publicFilesDir}/{$displayPageHeaderLogo.uploadName|escape:"url"}" width="{$displayPageHeaderLogo.width|escape}" height="{$displayPageHeaderLogo.height|escape}" {if $displayPageHeaderLogo.altText != ''}alt="{$displayPageHeaderLogo.altText|escape}"{/if} />
								</a>
							{elseif $displayPageHeaderTitle}
								<a href="{$homeUrl}" class="is_text">{$displayPageHeaderTitle|escape}</a>
							{else}
								<a href="{$homeUrl}" class="is_img">
									<img src="{$baseUrl}/templates/images/structure/logo.png" alt="{$applicationName|escape}" title="{$applicationName|escape}" width="180" height="90" />
								</a>
							{/if}
							</div>
						</div>

						{capture assign="primaryMenu"}
							{load_menu name="primary" id="navigationPrimary" ulClass="pkp_navigation_primary"}
						{/capture}

						<nav class="pkp_site_nav_menu" aria-label="{translate|escape key="common.navigation.site"}">
							<a id="siteNav"></a>
							<div class="pkp_navigation_primary_row">
								<div class="pkp_navigation_primary_wrapper">
									{* Primary navigation menu for current application *}
									{$primaryMenu}

									{* Search form *}
									{if $currentContext && $requestedPage !== 'search'}
										<div class="pkp_navigation_search_wrapper">
											<a href="{url page="search"}" class="pkp_search pkp_search_desktop">
												<span class="fa fa-search" aria-hidden="true"></span>
												{translate key="common.search"}
											</a>
										</div>
									{/if}
								</div>
							</div>
							<div class="pkp_navigation_user_wrapper" id="navigationUserWrapper">
								{load_menu name="user" id="navigationUser" ulClass="pkp_navigation_user" liClass="profile"}
							</div>
						</nav>
					</div><!-- .pkp_head_wrapper -->
				</header><!-- .pkp_structure_head -->

				{* Wrapper for page content and sidebars *}
				{if $isFullWidth}
					{assign var=hasSidebar value=0}
				{/if}
				<div class="pkp_structure_content{if $hasSidebar} has_sidebar{/if}">
					<div class="pkp_structure_main" role="main">
						<a id="pkp_content_main"></a>
	{/if}
{else}
	{* ========================================================================= *}
	{* DEFAULT 100% UNTOUCHED HEADER FOR ALL 53 OTHER JOURNALS ON CAMPUS        *}
	{* ========================================================================= *}
	{strip}
		{assign var="showingLogo" value=true}
		{if !$displayPageHeaderLogo}
			{assign var="showingLogo" value=false}
		{/if}
	{/strip}
	<!DOCTYPE html>
	<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
	{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
	{include file="frontend/components/headerHead.tpl"}
	<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}" dir="{$currentLocaleLangDir|escape|default:"ltr"}">

		<div class="pkp_structure_page">

			{* Header *}
			<header class="pkp_structure_head" id="headerNavigationContainer" role="banner">
				{* Skip to content nav links *}
				{include file="frontend/components/skipLinks.tpl"}

				<div class="pkp_head_wrapper">

					<div class="pkp_site_name_wrapper">
						<button class="pkp_site_nav_toggle">
							<span>Open Menu</span>
						</button>
						{if !$requestedPage || $requestedPage === 'index'}
							<h1 class="pkp_screen_reader">
								{if $currentContext}
									{$displayPageHeaderTitle|escape}
								{else}
									{$siteTitle|escape}
								{/if}
							</h1>
						{/if}
						<div class="pkp_site_name">
						{capture assign="homeUrl"}
							{url page="index" router=$smarty.const.ROUTE_PAGE}
						{/capture}
						{if $displayPageHeaderLogo}
							<a href="{$homeUrl}" class="is_img">
								<img src="{$publicFilesDir}/{$displayPageHeaderLogo.uploadName|escape:"url"}" width="{$displayPageHeaderLogo.width|escape}" height="{$displayPageHeaderLogo.height|escape}" {if $displayPageHeaderLogo.altText != ''}alt="{$displayPageHeaderLogo.altText|escape}"{/if} />
							</a>
						{elseif $displayPageHeaderTitle}
							<a href="{$homeUrl}" class="is_text">{$displayPageHeaderTitle|escape}</a>
						{else}
							<a href="{$homeUrl}" class="is_img">
								<img src="{$baseUrl}/templates/images/structure/logo.png" alt="{$applicationName|escape}" title="{$applicationName|escape}" width="180" height="90" />
							</a>
						{/if}
						</div>
					</div>

					{capture assign="primaryMenu"}
						{load_menu name="primary" id="navigationPrimary" ulClass="pkp_navigation_primary"}
					{/capture}

					<nav class="pkp_site_nav_menu" aria-label="{translate|escape key="common.navigation.site"}">
						<a id="siteNav"></a>
						<div class="pkp_navigation_primary_row">
							<div class="pkp_navigation_primary_wrapper">
								{* Primary navigation menu for current application *}
								{$primaryMenu}

								{* Search form *}
								{if $currentContext && $requestedPage !== 'search'}
									<div class="pkp_navigation_search_wrapper">
										<a href="{url page="search"}" class="pkp_search pkp_search_desktop">
											<span class="fa fa-search" aria-hidden="true"></span>
											{translate key="common.search"}
										</a>
									</div>
								{/if}
							</div>
						</div>
						<div class="pkp_navigation_user_wrapper" id="navigationUserWrapper">
							{load_menu name="user" id="navigationUser" ulClass="pkp_navigation_user" liClass="profile"}
						</div>
					</nav>
				</div><!-- .pkp_head_wrapper -->
			</header><!-- .pkp_structure_head -->

			{* Wrapper for page content and sidebars *}
			{if $isFullWidth}
				{assign var=hasSidebar value=0}
			{/if}
			<div class="pkp_structure_content{if $hasSidebar} has_sidebar{/if}">
				<div class="pkp_structure_main" role="main">
					<a id="pkp_content_main"></a>
{/if}
