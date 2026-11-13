<#macro content>
    <aside class="bosia-brand-panel" aria-label="BOSIA Technology">
        <a class="bosia-brand-link" href="https://bosiatech.com" target="_blank" rel="noopener noreferrer">
            <img src="${url.resourcesPath}/img/bosia-logo-white.png" alt="BOSIA Technology" width="304" height="84" />
        </a>
        <div class="bosia-brand-content">
            <span class="bosia-eyebrow"><span aria-hidden="true"></span>${msg("bosiaAccount")}</span>
            <h2>${msg("bosiaBuild")}<br />${msg("bosiaConnect")}<br /><span>${msg("bosiaGrow")}</span></h2>
            <p>${msg("bosiaAccountDescription")}</p>
            <div class="bosia-brand-points">
                <span><span class="bosia-check" aria-hidden="true">&#10003;</span>${msg("bosiaOneAccount")}</span>
                <span><span class="bosia-check" aria-hidden="true">&#10003;</span>${msg("bosiaConnectedTeams")}</span>
            </div>
        </div>
        <p class="bosia-brand-caption">${msg("bosiaBrandCaption")}</p>
    </aside>
    <footer class="bosia-footer">
        <nav aria-label="${msg('bosiaFooterLinks')}">
            <a href="https://bosiatech.com" target="_blank" rel="noopener noreferrer">${msg("bosiaWebsite")}</a>
            <span aria-hidden="true">&middot;</span>
            <a href="https://bosiatech.com/contact" target="_blank" rel="noopener noreferrer">${msg("bosiaHelp")}</a>
        </nav>
        <p>&copy; ${.now?string('yyyy')} BOSIA Technology</p>
    </footer>
</#macro>
