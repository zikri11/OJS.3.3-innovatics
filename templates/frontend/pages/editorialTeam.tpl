{**
 * templates/frontend/pages/editorialTeam.tpl
 *
 * Multi-Journal Safe Editorial Team Override.
 * Scoped conditionally for journal "innovatics" to protect other journals on the portal.
 *}
{include file="frontend/components/header.tpl" pageTitle="about.editorialTeam"}

<div class="page page_editorial_team">
	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.editorialTeam"}
	<h1>
		{translate key="about.editorialTeam"}
	</h1>
	{include file="frontend/components/editLink.tpl" page="management" op="settings" path="context" anchor="masthead" sectionTitleKey="about.editorialTeam"}

{if $currentJournal && $currentJournal->getPath() == 'innovatics'}
	{* ========================================================================= *}
	{* INNOVATICS EDITORIAL TEAM - LEXA 2-COLUMN SYMMETRIC GRID                  *}
	{* ========================================================================= *}
	
	{* 1. CHAIR OF ADVISORY BOARD *}
	<div class="lexa-team-section">
		<h3 class="lexa-team-role">Chair of Advisory Board</h3>
		<div class="lexa-lead-card">
			<div class="lead-card-header">
				<h4 class="lead-name">Dr. Ir. Aradea, M.T.</h4>
				<div class="lead-badges">
					<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
					<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
				</div>
			</div>
			<div class="lead-affiliation">Artificial Intelligence Siliwangi (AIS) Research Group, Department of Informatics, Siliwangi University, Indonesia</div>
			<div class="lead-interests"><strong>Research Interests:</strong> Artificial Intelligence, Self-Adaptive Systems, Software Engineering</div>
			<div class="lead-email"><i class="fa fa-envelope-o"></i> <a href="mailto:aradea@unsil.ac.id">aradea@unsil.ac.id</a></div>
		</div>
	</div>

	{* 2. EDITOR-IN-CHIEF *}
	<div class="lexa-team-section">
		<h3 class="lexa-team-role">Editor-in-Chief</h3>
		<div class="lexa-lead-card lexa-eic-card">
			<div class="lead-card-header">
				<h4 class="lead-name">Ir. Randi Rizal, Ph.D.</h4>
				<div class="lead-badges">
					<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
					<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
				</div>
			</div>
			<div class="lead-affiliation">Forensic and Security (FAST) Research Group, Department of Informatics, Siliwangi University, Indonesia</div>
			<div class="lead-interests"><strong>Research Interests:</strong> Digital Forensic, Cybersecurity, Artificial Intelligence, Information Security</div>
			<div class="lead-email"><i class="fa fa-envelope-o"></i> <a href="mailto:randirizal@ieee.org">randirizal@ieee.org</a></div>
		</div>
	</div>

	{* 3. MANAGING EDITORS (2 COLUMNS) *}
	<div class="lexa-team-section">
		<h3 class="lexa-team-role">Managing Editors</h3>
		<div class="lexa-editor-grid">
			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Ir. Alam Rahmatulloh, S.T., M.T.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Faculty of Engineering, Siliwangi University, Indonesia</div>
				<div class="editor-interests"><strong>Research Interests:</strong> Microservices, Artificial Intelligence, IoT, Security Systems, Service Computing</div>
				<div class="editor-email"><i class="fa fa-envelope-o"></i> <a href="mailto:alam@unsil.ac.id">alam@unsil.ac.id</a></div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Ir. Rohmat Gunawan, S.T., M.T.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Faculty of Engineering, Siliwangi University, Indonesia</div>
				<div class="editor-interests"><strong>Research Interests:</strong> Computer Security, Computer Networking, Distributed System</div>
				<div class="editor-email"><i class="fa fa-envelope-o"></i> <a href="mailto:rohmatgunawan@unsil.ac.id">rohmatgunawan@unsil.ac.id</a></div>
			</div>
		</div>
	</div>

	{* 4. REGIONAL EDITORS: ASIA-PACIFIC (2 COLUMNS) *}
	<div class="lexa-team-section">
		<h3 class="lexa-team-role">Regional (Handling) Editors for Asia-Pacific</h3>
		<div class="lexa-editor-grid">
			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Prof. Arif Bramantoro, Ph.D</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">School of Computing and Informatics, Universiti Teknologi Brunei, Brunei Darussalam</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Ts. Dr. Azliza Binti Yacob</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Computer Science, Universiti College TATI, Malaysia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Dr. Umawathy Techanamurthy</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Universiti Kebangsaan Malaysia, Malaysia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Harashta Tatimma Larasati, Ph.D</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Pukyong National University, South Korea</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Ir. Rianto, S.T., M.T.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Siliwangi University, Indonesia</div>
			</div>
		</div>
	</div>

	{* 5. REGIONAL EDITORS: MIDDLE EAST AND AFRICA (2 COLUMNS) *}
	<div class="lexa-team-section">
		<h3 class="lexa-team-role">Regional (Handling) Editors for Middle East and Africa</h3>
		<div class="lexa-editor-grid">
			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Prof. Dr. Mustafa Musa Jaber</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Dijlah University College, Baghdad, Iraq</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Imeh J. Umoren, Ph.D</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">School of Computing and Information Technology, Ikot Abasi, Nigeria</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Dr. Ir. Nur Widiyasono, M.Kom.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Siliwangi University, Indonesia</div>
			</div>
		</div>
	</div>

	{* 6. INTERNATIONAL EDITORIAL BOARD MEMBERS (2 COLUMNS) *}
	<div class="lexa-team-section">
		<h3 class="lexa-team-role">International Editorial Board Members</h3>
		<div class="lexa-editor-grid">
			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Prof. Ts. Dr. Rabiah Ahmad</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Computer and Communication Technology, Faculty of Engineering Technology, Universiti Tun Hussein Onn Malaysia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Prof. Dr. Anindita Septiarini, M.Cs.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Faculty of Engineering, Mulawarman University, Indonesia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Dr. Nurzal Effiyana Binti Ghazali</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Communication Network System (CNETS), Centre for Engineering Education (CEE), Universiti Teknologi Malaysia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Bambang Pudjoatmodjo, Ph.D</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Multimedia Engineering Technology, Faculty of Applied Sciences, Telkom University, Indonesia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Ts. Dr. Halimaton Saadiah Hakimi</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Computer Information Science, Universiti Teknologi Petronas, Malaysia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Aa Zezen Zaenal Abidin, M.Cs., Ph.D</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Faculty of Engineering, Mandiri University, Indonesia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Ir. Huzain Azis, M.Cs., Ph.D</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Malaysian Institute of Information Technology - Universiti Kuala Lumpur, Malaysia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Ir. Heni Sulastri, S.T., M.T.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Information System, Faculty of Engineering, Siliwangi University, Indonesia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Dr. Neng Ika Kurniati, M.Cs.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Faculty of Engineering, Siliwangi University, Indonesia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Siti Yuliyanti, S.T., M.Kom.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Faculty of Engineering, Siliwangi University, Indonesia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Vega Purwayoga, M.Kom.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Faculty of Engineering, Siliwangi University, Indonesia</div>
			</div>

			<div class="lexa-editor-card">
				<div class="editor-header">
					<h4 class="editor-name">Muhammad Sidik Asyaky, M.T.</h4>
					<div class="editor-badges">
						<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
						<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
					</div>
				</div>
				<div class="editor-affiliation">Department of Informatics, Faculty of Engineering, Siliwangi University, Indonesia</div>
			</div>
		</div>
	</div>

	{* 7. COPY EDITOR & PROOFREADER *}
	<div class="lexa-team-section">
		<h3 class="lexa-team-role">Copy Editor &amp; Proofreader</h3>
		<div class="lexa-lead-card">
			<div class="lead-card-header">
				<h4 class="lead-name">Dr. Nuraminah Ramli</h4>
				<div class="lead-badges">
					<a href="https://www.scopus.com/home.uri" target="_blank" rel="noopener" class="badge-scopus">Scopus</a>
					<a href="https://scholar.google.co.id/citations?hl=id&amp;user=ZZ4x68UAAAAJ&amp;view_op=list_works&amp;sortby=pubdate" target="_blank" rel="noopener" class="badge-scholar">Google Scholar</a>
				</div>
			</div>
			<div class="lead-affiliation">Department of Computer Science, Universiti Malaysia Perlis, Malaysia</div>
		</div>
	</div>

{else}
	{* ========================================================================= *}
	{* DEFAULT 100% UNTOUCHED CONTENT FOR ALL 53 OTHER JOURNALS ON CAMPUS        *}
	{* ========================================================================= *}
	{$currentContext->getLocalizedData('editorialTeam')}
{/if}

</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
