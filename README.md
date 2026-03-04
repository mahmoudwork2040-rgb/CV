# Automated CI/CD Resume Pipeline 🚀

Welcome! This repository contains the source code and automation pipeline I use to generate and host my Curriculum Vitae. 

Instead of manually fighting with Microsoft Word formatting every time I learn a new skill, my entire resume is written in a simple `YAML` file. This repository automatically converts that data into a beautiful PDF, PNG, and HTML file, and deploys it live to the web.

**🔗 [View the Live Auto-Generated CV](https://OssamaTaha.github.io/cv/)**

---

## 🏗️ How It Works (The Architecture)

1. **Content Definition (`ossama_taha_cv.yaml`)**: The single source of truth. All my experience, projects, and skills are stored here as plain text data. The file also contains a `design` block to override margins, font sizes, and colors.
2. **Compilation ([RenderCV](https://github.com/sinaatalay/rendercv))**: A fantastic Python-based framework that takes the YAML data and compiles it into a meticulously formatted PDF using [Typst](https://typst.app/) under the hood.
3. **CI/CD Pipeline (GitHub Actions)**: Defined in `.github/workflows/render_cv.yaml`. Every time I push a commit to the `main` branch, GitHub spins up a runner, installs Python & RenderCV, and generates the newest version of my CV files.
4. **Hosting (GitHub Pages)**: The Action automatically deploys the generated files (PDF, PNGs) to the `gh-pages` branch, making them publicly accessible at a static URL.
5. **LinkedIn Magic (`index.html`)**: To get LinkedIn's "Featured" section to show a beautiful thumbnail preview image of my CV (instead of a generic PDF icon), the root contains an `index.html` file with **Open Graph meta tags**. It serves the thumbnail image to LinkedIn's scraper, then uses JavaScript to instantly redirect actual human visitors directly to the PDF file.

---

## �️ How to Make Your Own!

If you're coming from LinkedIn and want to replicate this automated pipeline for your own resume, follow these steps:

### Phase 1: Local Setup & Testing

1. **Fork or Clone** this repository to your local machine.
2. **Setup Python**: Ensure you have Python 3.10 or higher installed.
3. **Create a Virtual Environment**:
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # On Windows use: .venv\Scripts\activate
   ```
4. **Install RenderCV**:
   ```bash
   pip install "rendercv[full]"
   ```
5. **Add Your Data**: Open `ossama_taha_cv.yaml`, rename it (e.g., `your_name_cv.yaml`), and replace my data with yours! You can adjust the margins and colors in the `design` block at the bottom.
6. **Compile Locally**: Run the following command to test your build:
   ```bash
   rendercv render your_name_cv.yaml
   ```
   *Your shiny new PDF will appear in the `rendercv_output` folder!*

### Phase 2: Automating Deployment

1. **Update the GitHub Action**: Open `.github/workflows/render_cv.yaml` and change the filename in the `Run rendercv render` step to match your new YAML filename.
2. **Update the HTML Wrapper**: Open `index.html`. 
   - Update the `<title>` and `og:title` / `twiter:title`.
   - Update the `og:description` / `twitter:description` to describe yourself.
   - Update the `og:url` to point to your future GitHub Pages link.
   - Update the `<meta http-equiv="refresh"...>` and `<script>` redirect links to point to your new PDF filename.
3. **Push to GitHub**: Commit your changes and push them to your repository's `main` branch.
4. **Enable GitHub Pages**:
   - Go to your repository **Settings** on GitHub.
   - Click on **Pages** in the left sidebar.
   - Under "Build and deployment", select **Deploy from a branch**.
   - Select the **`gh-pages`** branch and click Save.
5. **Wait 2 Minutes**: Check the "Actions" tab to watch your CV build. Once the Pages deployment is complete, your URL will be live!

### Phase 3: Add to LinkedIn

1. Go to your LinkedIn profile's **Featured** section.
2. Click **Add a Link**.
3. Paste the base URL to your repository pages site: `https://YourUsername.github.io/RepoName/` (Make sure you don't link straight to the `.pdf` if you want the thumbnail image to work!).

**From now on, whenever you get a promotion or learn a new tool, just edit your YAML file, push to GitHub, and your LinkedIn profile will update automatically! 🎉**
