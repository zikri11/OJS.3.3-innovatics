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
