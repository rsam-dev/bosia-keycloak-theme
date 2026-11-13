<#ftl output_format="HTML" auto_esc=true>
<#macro emailLayout>
<!DOCTYPE html>
<html lang="${locale.language}" dir="${(ltr)?then('ltr','rtl')}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${subject!'BOSIA Technology'}</title>
</head>
<body style="margin:0;padding:0;background-color:#f2f7fa;color:#22394f;font-family:Arial,'Noto Sans Khmer',sans-serif;line-height:1.65;">
    <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="width:100%;background-color:#f2f7fa;">
        <tr>
            <td align="center" style="padding:32px 16px;">
                <table role="presentation" width="600" cellspacing="0" cellpadding="0" border="0" style="width:100%;max-width:600px;border-collapse:separate;border-spacing:0;background-color:#ffffff;border:1px solid #dce8ee;border-radius:16px;overflow:hidden;">
                    <tr>
                        <td style="height:5px;background-color:#00a9b6;font-size:0;line-height:0;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="padding:32px 32px 24px;border-bottom:1px solid #e5edf2;">
                            <#if (url.resourcesUrl)??>
                                <img src="${url.resourcesUrl}/img/bosia-logo.png" width="228" height="62" alt="BOSIA Technology" style="display:block;width:228px;max-width:100%;height:auto;border:0;">
                            <#else>
                                <span style="color:#082d52;font-size:26px;font-weight:bold;">BOSIA Technology</span>
                            </#if>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding:28px 32px 32px;color:#22394f;font-size:16px;line-height:1.65;overflow-wrap:anywhere;word-break:break-word;">
                            <h1 style="margin:0 0 20px;color:#082d52;font-size:24px;font-weight:700;line-height:1.35;">${subject!'BOSIA Technology'}</h1>
                            <#nested>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding:24px 32px;background-color:#f7fafc;border-top:1px solid #e5edf2;color:#526a7d;font-size:13px;line-height:1.65;">
                            <p style="margin:0 0 8px;color:#082d52;font-weight:bold;">${msg("bosiaEmailTagline")}</p>
                            <p style="margin:0;">${msg("bosiaEmailFooter")}</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
</#macro>
