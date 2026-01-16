# Carbon Footprint Tracker - Landing Page

Professional landing page for the Carbon Footprint Tracker browser extension.

## Quick Deploy Options

### Option 1: GitHub Pages (Recommended - Free)

1. Create a new repository on GitHub (e.g., `carbon-tracker-landing`)
2. Push this `landing-page` folder to the repo
3. Go to repository Settings → Pages
4. Source: Deploy from branch `main` → folder: `/root` or `/docs` (if you move files there)
5. Your site will be live at: `https://yourusername.github.io/carbon-tracker-landing/`

**Quick commands:**
```bash
cd landing-page
git init
git add .
git commit -m "Initial landing page"
git branch -M main
git remote add origin https://github.com/yourusername/carbon-tracker-landing.git
git push -u origin main
```

### Option 2: Netlify (Free)

1. Go to [netlify.com](https://netlify.com)
2. Sign up/login with GitHub
3. Click "Add new site" → "Import an existing project"
4. Choose GitHub and select your repository
5. Build settings:
   - Build command: (leave empty)
   - Publish directory: `landing-page`
6. Click "Deploy site"
7. Your site will be live at: `https://your-site-name.netlify.app`

**Or use Netlify Drop:**
- Go to [app.netlify.com/drop](https://app.netlify.com/drop)
- Drag and drop the `landing-page` folder
- Instant deployment!

### Option 3: Vercel (Free)

1. Go to [vercel.com](https://vercel.com)
2. Sign up/login with GitHub
3. Click "Add New Project"
4. Import your Git repository
5. Configure:
   - Root Directory: `landing-page`
   - Framework Preset: Other
6. Click "Deploy"
7. Your site will be live at: `https://your-project.vercel.app`

### Option 4: Cloudflare Pages (Free)

1. Go to [pages.cloudflare.com](https://pages.cloudflare.com)
2. Sign up/login
3. Click "Create a project"
4. Connect your Git repository
5. Configure:
   - Build command: (leave empty)
   - Build output directory: `landing-page`
6. Click "Save and Deploy"

## Local Testing

Open `index.html` in your browser, or run a local server:

```bash
# Using Python
cd landing-page
python -m http.server 8000

# Using Node.js
npx serve

# Using PHP
php -S localhost:8000
```

Then visit: `http://localhost:8000`

## Customization Checklist

Before deploying, update these items:

- [ ] Update the download link path in index.html (currently points to `../carbon-tracker-v1.1.0-beta.zip`)
- [ ] Add your contact info in the footer (search for `[Your Email or GitHub]`)
- [ ] Add your GitHub repository link if you want to include it
- [ ] Consider adding real screenshots if you have them (see Screenshots section below)
- [ ] Update the year in footer if deploying in future years

## Adding Real Screenshots

To replace the mockup with real screenshots:

1. Take screenshots of your extension popup
2. Save them in `landing-page/images/`
3. Update the `hero-image` section in index.html to use `<img>` tags instead of the mockup

Example:
```html
<div class="hero-image">
    <img src="images/extension-screenshot.png" alt="Carbon Footprint Tracker Extension" />
</div>
```

## File Structure

```
landing-page/
├── index.html          # Main HTML file
├── styles.css          # All styling
├── README.md           # This file
└── images/            # Directory for screenshots (create as needed)
```

## Features

- Fully responsive design (mobile, tablet, desktop)
- Smooth scroll animations
- No external dependencies (except Google Fonts)
- Optimized for performance
- SEO-friendly markup
- Accessible (semantic HTML)

## Browser Support

- Chrome/Edge/Safari/Firefox (latest 2 versions)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Performance

- Loads in <1 second on fast connections
- Minimal JavaScript (only for smooth scrolling and animations)
- Optimized CSS with minimal reflows
- Web font optimized with font-display: swap

## License

Same as parent project (ISC)
