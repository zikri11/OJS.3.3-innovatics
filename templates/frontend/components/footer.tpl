{**
 * templates/frontend/components/footer.tpl
 *
 * Multi-Journal Safe Footer Override.
 * Scoped conditionally for journal "innovatics" to protect other journals on the portal.
 *}
{if $currentJournal && $currentJournal->getPath() == 'innovatics'}
	{* ========================================================================= *}
	{* INNOVATICS JOURNAL FOOTER - ISOLATED BRANCH                              *}
	{* ========================================================================= *}
		</div><!-- pkp_structure_main -->

		{* Sidebars *}
		{if empty($isFullWidth)}
			{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
			{if $sidebarCode}
				<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
					{$sidebarCode}

					{* INJEKSI KARTU INDEXING KHUSUS INNOVATICS DI BAWAH SUPPORTED *}
					{if $currentJournal && $currentJournal->getPath() == 'innovatics' && (!$requestedPage || $requestedPage === 'index')}
						<div class="pkp_block block_custom lexa-indexing-card" id="customblock-indexing-lexa">
							<h2 class="title">INDEXED BY</h2>
							<div class="content lexa-indexing-grid">
								<a href="https://sinta.kemdikbud.go.id" target="_blank" rel="noopener" class="indexing-item">
									<img src="{$baseUrl}/public/site/images/randirz/sinta-3-potensi-utama-92ee77b588ba1602389074f0f1d5d4bb.png" alt="SINTA 3" />
								</a>
								<a href="https://doaj.org" target="_blank" rel="noopener" class="indexing-item">
									<img src="{$baseUrl}/public/site/images/randirz/doaj-logo.jpg" alt="DOAJ" />
								</a>
								<a href="https://scholar.google.com" target="_blank" rel="noopener" class="indexing-item">
									<img src="{$baseUrl}/public/site/images/randirz/google-scholar-3.png" alt="Google Scholar" />
								</a>
								<a href="https://journals.indexcopernicus.com" target="_blank" rel="noopener" class="indexing-item">
									<img src="https://indexcopernicus.com/images/logo_glowne_1000.png" alt="Index Copernicus" />
								</a>
							</div>
						</div>

						{* INJEKSI KARTU ARTICLES DI SIDEBAR KANAN KHUSUS INNOVATICS *}
						{if $publishedSubmissions}
							<div class="pkp_block block_custom lexa-sidebar-articles-card" id="customblock-articles-lexa">
								<h2 class="title">ARTICLES</h2>
								<div class="content lexa-sidebar-articles-list">
									{foreach from=$publishedSubmissions item=section}
										{foreach from=$section.articles item=article}
											{assign var=articlePath value=$article->getBestId()}
											<div class="sidebar-article-item">
												<h4 class="sidebar-article-title">
													<a href="{url page="article" op="view" path=$articlePath}">
														{$article->getLocalizedTitle()|strip_unsafe_html}
													</a>
												</h4>
												<div class="sidebar-article-authors">
													{$article->getAuthorString()|escape}
												</div>
												<div class="sidebar-article-actions">
													<a href="{url page="article" op="view" path=$articlePath}" class="sidebar-article-link">
														<i class="fa fa-file-text-o"></i> View Article
													</a>
													{if $article->getGalleys()}
														{foreach from=$article->getGalleys() item=galley}
															<a href="{url page="article" op="view" path=$articlePath|to_array:$galley->getBestGalleyId()}" class="sidebar-galley-pdf">
																<i class="fa fa-file-pdf-o"></i> PDF
															</a>
														{/foreach}
													{/if}
												</div>
											</div>
										{/foreach}
									{/foreach}
									<div class="sidebar-article-footer">
										<a href="{url page="issue" op="archive"}" class="sidebar-view-all">
											View All Articles <i class="fa fa-arrow-right"></i>
										</a>
									</div>
								</div>
							</div>
						{/if}
					{/if}

				</div><!-- pkp_sidebar.left -->
			{/if}
		{/if}
	</div><!-- pkp_structure_content -->

	{if !$requestedPage || $requestedPage === 'index'}
		{* ========================================================================= *}
		{* 4-COLUMN MODERN DARK FOOTER SUITE (LEXA STYLE)                            *}
		{* ========================================================================= *}
		<footer class="pkp_structure_footer_wrapper lexa-footer-wrapper" role="contentinfo">
			<a id="pkp_content_footer"></a>
			<div class="lexa-footer-container">
				<div class="lexa-footer-main">
					<!-- Col 1: Brand & Profile -->
					<div class="footer-col footer-col-brand">
						<div class="footer-logo">
							<img src="{$baseUrl}/public/journals/29/logo-innovatics-white.svg" alt="INNOVATICS White Logo" />
						</div>
						<p class="footer-about-text">
							INNOVATICS (Innovation In Research of Informatics) is a peer-reviewed open access scientific journal published by Universitas Siliwangi.
						</p>
						<div class="footer-issn-box">
							<span><strong>e-ISSN:</strong> 2656-8993</span>
						</div>
					</div>

					<!-- Col 2: Editorial Office -->
					<div class="footer-col footer-col-contact">
						<h4 class="footer-heading">Editorial Office</h4>
						<p class="office-institution">Universitas Siliwangi</p>
						<p class="office-faculty">Faculty of Engineering &bull; Dept. of Informatics</p>
						<p class="office-address">
							<i class="fa fa-map-marker"></i> Siliwangi University Campus 2 Informatics Building, Kota Tasikmalaya 46115, Jawa Barat, Indonesia
						</p>
						<p class="office-contact-item">
							<i class="fa fa-envelope-o"></i> <a href="mailto:innovatics@unsil.ac.id">innovatics@unsil.ac.id</a>
						</p>
					</div>

					<!-- Col 3: Quick Links (2 Sub-Columns) -->
					<div class="footer-col footer-col-links">
						<h4 class="footer-heading">Quick Links</h4>
						<div class="footer-links-grid">
							<ul class="footer-nav-list">
								<li><a href="{url page="index"}">&gt; Home Portal</a></li>
								<li><a href="{url page="about"}">&gt; About Journal</a></li>
								<li><a href="{url page="issue" op="current"}">&gt; Current Issue</a></li>
								<li><a href="{url page="issue" op="archive"}">&gt; Issue Archives</a></li>
							</ul>
							<ul class="footer-nav-list">
								<li><a href="{url page="about" op="editorialTeam"}">&gt; Editorial Team</a></li>
								<li><a href="{url page="about" op="submissions"}">&gt; Guidelines</a></li>
								<li><a href="{url page="about" op="submissions"}">&gt; Submissions</a></li>
								<li><a href="{url page="about" op="contact"}">&gt; Contact Us</a></li>
							</ul>
						</div>
					</div>

					<!-- Col 4: Follow Us & Statistics -->
					<div class="footer-col footer-col-social">
						<h4 class="footer-heading">Follow &amp; Access</h4>
						<div class="footer-social-icons">
							<a href="https://twitter.com" target="_blank" rel="noopener" aria-label="X / Twitter" class="social-icon-btn"><i class="fa fa-twitter"></i></a>
							<a href="https://facebook.com" target="_blank" rel="noopener" aria-label="Facebook" class="social-icon-btn"><i class="fa fa-facebook"></i></a>
							<a href="https://linkedin.com" target="_blank" rel="noopener" aria-label="LinkedIn" class="social-icon-btn"><i class="fa fa-linkedin"></i></a>
							<a href="https://youtube.com" target="_blank" rel="noopener" aria-label="YouTube" class="social-icon-btn"><i class="fa fa-youtube-play"></i></a>
						</div>
						
						<div class="footer-flag-counter">
							<a href="https://info.flagcounter.com/ICno" target="_blank" rel="noopener">
								<img src="https://s01.flagcounter.com/count2/ICno/bg_FFFFFF/txt_000000/border_CCCCCC/columns_2/maxflags_10/viewers_0/labels_0/pageviews_0/flags_0/percent_0/" alt="Flag Counter" border="0" />
							</a>
						</div>

						<div class="footer-oa-badge">
							<img src="{$baseUrl}/public/journals/29/open-access-logo.svg" alt="Open Access" class="oa-logo-img" />
							<div class="oa-text">
								<strong>Open Access for a Wider Impact</strong>
								<p>Peer-reviewed global research publication.</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Sub-Footer / Copyright -->
				<div class="lexa-subfooter">
					<div class="subfooter-left">
						&copy; 2026 <strong>INNOVATICS</strong>. Department of Informatics, Universitas Siliwangi. All rights reserved.
					</div>
					<div class="subfooter-right">
						Powered by <a href="https://pkp.sfu.ca/ojs/" target="_blank" rel="noopener">Open Journal Systems</a> &bull; Universitas Siliwangi
					</div>
				</div>
			</div>
		</footer>
	{else}
		<div class="pkp_structure_footer_wrapper" role="contentinfo">
			<a id="pkp_content_footer"></a>

			<div class="pkp_structure_footer">

				{if $pageFooter}
					<div class="pkp_footer_content">
						{$pageFooter}
					</div>
				{/if}

				<div class="pkp_brand_footer" role="complementary">
					<a href="{url page="about" op="aboutThisPublishingSystem"}">
						<img alt="{translate key="about.aboutThisPublishingSystem"}" src="{$baseUrl}/{$brandImage}">
					</a>
				</div>
			</div>
		</div><!-- pkp_structure_footer_wrapper -->
	{/if}

	</div><!-- pkp_structure_page -->

	{load_script context="frontend"}

	{call_hook name="Templates::Common::Footer::PageFooter"}
	</body>
	</html>
{else}
	{* ========================================================================= *}
	{* DEFAULT 100% UNTOUCHED FOOTER FOR ALL 53 OTHER JOURNALS ON CAMPUS        *}
	{* ========================================================================= *}
		</div><!-- pkp_structure_main -->

		{* Sidebars *}
		{if empty($isFullWidth)}
			{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
			{if $sidebarCode}
				<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
					{$sidebarCode}
				</div><!-- pkp_sidebar.left -->
			{/if}
		{/if}
	</div><!-- pkp_structure_content -->

	<div class="pkp_structure_footer_wrapper" role="contentinfo">
		<a id="pkp_content_footer"></a>

		<div class="pkp_structure_footer">

			{if $pageFooter}
				<div class="pkp_footer_content">
					{$pageFooter}
				</div>
			{/if}

			<div class="pkp_brand_footer" role="complementary">
				<a href="{url page="about" op="aboutThisPublishingSystem"}">
					<img alt="{translate key="about.aboutThisPublishingSystem"}" src="{$baseUrl}/{$brandImage}">
				</a>
			</div>
		</div>
	</div><!-- pkp_structure_footer_wrapper -->

	</div><!-- pkp_structure_page -->

	{load_script context="frontend"}

	{call_hook name="Templates::Common::Footer::PageFooter"}
	</body>
	</html>
{/if}
