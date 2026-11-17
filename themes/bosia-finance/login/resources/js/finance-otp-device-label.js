import qrcode from './vendor/qrcode-generator-2.0.4.js';

const form = document.getElementById('kc-totp-settings-form');

const account = document.getElementById('finance-otp-account');
const steps = document.getElementById('kc-totp-settings');
if (account && steps) steps.before(account);

const provisioning = document.getElementById('finance-otp-provisioning');
const image = document.getElementById('kc-totp-secret-qr-code');

if (form && provisioning && image) {
    // The server supplies the complete URI from its current OTP policy.
    // Encode it locally without changing the credential or sending it elsewhere.
    const keyUri = provisioning.dataset.keyUri;
    try {
        const uri = new URL(keyUri);
        if (uri.protocol === 'otpauth:' && ['totp', 'hotp'].includes(uri.hostname)
            && uri.searchParams.get('issuer') === 'BOSIA Finance'
            && decodeURIComponent(uri.pathname.slice(1)).startsWith('BOSIA Finance:')) {
            const code = qrcode(0, 'M');
            code.addData(keyUri, 'Byte');
            code.make();
            image.src = code.createDataURL(4, 16);
            image.alt = 'Scan this code for BOSIA Finance';
        }
    } catch {
        // Retain Keycloak's original code if the optional display enhancement fails.
    }
}
provisioning?.removeAttribute('data-key-uri');
provisioning?.remove();
