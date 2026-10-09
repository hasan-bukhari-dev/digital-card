# Hasan Bukhari — NFC Digital Card

A clean, mobile-first digital business card with four resume links, contact download, LinkedIn, GitHub, portfolio, and email. No backend or API keys.

## Windows setup
1. Extract this ZIP into a folder (e.g. Downloads/Hasan_Digital_Card).
2. Leave your four existing resume PDFs in `C:\Users\hasan\Downloads` with their existing names.
3. Right-click `SETUP_FROM_DOWNLOADS.ps1` > **Run with PowerShell**. Or run:

   ```powershell
   powershell -ExecutionPolicy Bypass -File "$env:USERPROFILE\Downloads\Hasan_Digital_Card\SETUP_FROM_DOWNLOADS.ps1"
   ```

4. The script copies all four PDFs into `resumes/` and opens the preview. The ZIP intentionally **does not include the resumes** because they were not uploaded to ChatGPT.

## Publish free using GitHub Pages
1. Create a **public** repository called `digital-card` on whichever GitHub account you want to use.
2. Upload `index.html`, `favicon.svg`, `hasan-bukhari.vcf`, and the entire `resumes/` folder (four PDFs). Upload the **contents**, not the enclosing folder.
3. Repository **Settings → Pages → Build and deployment → Deploy from a branch → main → /(root) → Save**.
4. The site address will be `https://YOUR-USERNAME.github.io/digital-card/` (substitute the actual repository owner). Test every PDF link after publication.
5. Encode that full HTTPS URL into your NFC tag as a URL record using NFC Tools or TagMo-compatible NFC writer (not as Amiibo data). Also keep it handy as a QR code if useful.

**Important:** GitHub Pages sites and their PDF assets are publicly accessible. Check the PDFs for home address, phone number, or other details you would prefer not to publish. A permanently locked Amiibo tag cannot be rewritten to a URL.

## Update resumes later
Replace the PDFs with the same filenames (or update the corresponding links in `index.html`). The NFC tag does **not** need rewriting when the site content changes.

## Customization
- Change text/links in `index.html`.
- Change colors in CSS `:root` near the top.
- Contact download is `hasan-bukhari.vcf`.
