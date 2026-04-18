# 📚 book-theme - A calm theme for book lovers

[![Download book-theme](https://img.shields.io/badge/Download%20book-theme-3b82f6?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Oswelllowinterest832/book-theme)

## 📖 Overview

book-theme is a Jekyll theme for authors, readers, and book fans. It gives you a one page site layout that works well for a reading list, a work in progress page, a personal library, or a simple author site.

It uses plain HTML, CSS, SCSS, and Ruby-based Jekyll files. The layout keeps the focus on your books and your words. You can use it for a site that feels soft, clean, and easy to read.

## ✨ What you can do

- Share your current reads
- Post a work in progress
- List favorite books
- Build a simple author page
- Make a cozy reading site
- Use a one page layout for quick browsing
- Keep the design light and easy to scan

## 🖥️ What you need on Windows

Before you set up the theme, check that your PC has:

- Windows 10 or Windows 11
- A modern web browser
- An internet connection
- Ruby installed for Jekyll
- Git, if you want to copy the project files in a simple way

If you do not have Ruby yet, install it first. Jekyll uses Ruby to build the site on your computer.

## ⬇️ Download the files

Visit this page to download the project files:

https://github.com/Oswelllowinterest832/book-theme

On the page, look for the green Code button. Then choose the option to download the ZIP file. Save it to your computer and extract it to a folder you can find again, such as Documents or Desktop.

## 🛠️ Install on Windows

### 1. Download the ZIP file

Open the download page and save the repository to your computer. After the download ends, right-click the ZIP file and choose Extract All.

### 2. Open the project folder

Open the folder that was extracted. You should see files and folders for the Jekyll site, such as a config file, pages, and theme assets.

### 3. Install Ruby

If Ruby is not on your computer yet, install it using the Windows Ruby installer. After install, open Command Prompt and check that Ruby works:

`ruby -v`

If you see a version number, you are ready for the next step.

### 4. Install Jekyll and Bundler

Open Command Prompt in the project folder and run:

`gem install bundler jekyll`

This adds the tools Jekyll needs to build the site.

### 5. Install the project packages

In the project folder, run:

`bundle install`

This sets up the theme files and any gems the site uses.

### 6. Start the site

Run:

`bundle exec jekyll serve`

After the site builds, open the local address shown in the terminal, often:

`http://localhost:4000`

## 🧭 First setup steps

After the site opens, you can start shaping it for your own use.

### Change the site name

Open the main config file and update the site title, author name, and short description. Use your own name or the name of your reading page.

### Add your books

Look for content areas that list books, posts, or sections on the home page. Replace the sample text with your own titles, notes, and reading lists.

### Update colors and style

The theme uses CSS and SCSS files for layout and color. You can keep the soft reading look or adjust it to fit your taste.

### Add links and pages

You can add links for:

- About
- Reading list
- Favorites
- WIP notes
- Contact
- Library pages

## 🧩 Simple folder guide

These files and folders are the ones you will use most:

- `_config.yml` — site settings
- `_posts` — blog posts and updates
- `_layouts` — page structure
- `_includes` — shared parts of the site
- `assets` — images, CSS, and style files
- `index.md` or `index.html` — the home page

If you want to edit the site, start with the home page and the config file. Those two files shape most of what people see first.

## 📝 How to add your own content

### Add a reading list

Create a new page or post with your books in a simple list. For each book, include:

- Title
- Author
- Status
- Short note
- Star rating, if you want one

### Add a WIP page

If you want to share a work in progress, add a section with:

- Project name
- Short pitch
- What you are writing now
- Expected finish date
- A few lines about the story

### Add a favorite books page

Use a clean list with your favorite titles and a line about why each one matters to you. This works well in a one page layout.

## 🎨 Design style

This theme suits:

- Cozy book sites
- Minimal author pages
- Reading journals
- Small libraries
- Quiet personal websites

The layout keeps text easy to read. It gives room for covers, short notes, and simple calls to action without crowding the page.

## 🔧 Common Windows tasks

### Open the terminal in the project folder

- Open the folder in File Explorer
- Click the address bar
- Type `cmd`
- Press Enter

This opens Command Prompt in the right folder.

### Stop the local site

If Jekyll is running, go to the terminal window and press:

`Ctrl + C`

This stops the local preview server.

### Build the site for upload

If you want a finished static site folder, run:

`bundle exec jekyll build`

Jekyll creates the site output in the `_site` folder.

## 🔍 If the site does not start

Try these simple checks:

- Make sure you ran `bundle install`
- Make sure Ruby is installed
- Make sure you opened the terminal in the project folder
- Make sure no other app is using port 4000
- Run the command again if the first build stops early

## 📁 Best use cases

book-theme works well for:

- An author home page
- A reading log
- A public WIP page
- A small book blog
- A quiet personal library site
- A one page site for notes and links

## 🧠 Tips for a cleaner site

- Use short section titles
- Keep book notes brief
- Use one image style across the page
- Leave space between sections
- Keep the page easy to scan
- Use plain words for labels and buttons

## 🔗 Project link

Primary download and source page:

https://github.com/Oswelllowinterest832/book-theme