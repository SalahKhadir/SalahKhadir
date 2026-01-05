# Assets Directory

This directory contains media files for the GitHub profile README.

## How to Replace the Top Banner GIF

You have **two options** for updating the banner at the top of your profile:

### Option 1: Add to Repository (Recommended ✅)

**Advantages:**
- File is always available (no external dependencies)
- Full control over the asset
- Faster loading from GitHub's CDN
- No third-party service needed

**Steps:**
1. **Convert your video to GIF** (if it's not already a GIF):
   - Use online tools: [ezgif.com](https://ezgif.com/), [cloudconvert.com](https://cloudconvert.com/)
   - Or use ffmpeg command: 
     ```bash
     ffmpeg -i your-video.mp4 -vf "fps=10,scale=1500:-1:flags=lanczos" banner.gif
     ```
   
2. **Add the GIF to this directory:**
   - Place your GIF file here and name it `banner.gif`
   - Or use any name you prefer (e.g., `header.gif`, `animation.gif`)

3. **Update README.md:**
   - Open the main `README.md` file
   - Find line 2 with the current image tag
   - Replace the `src` URL with: `./assets/banner.gif` (or your chosen filename)
   - Example:
     ```html
     <img src="./assets/banner.gif" width="1500" alt="Salah Khadir"/>
     ```

4. **Commit and push:**
   ```bash
   git add assets/banner.gif README.md
   git commit -m "Update profile banner"
   git push
   ```

**File Guidelines:**
- **Dimensions**: 1500px width (matches current banner) or your preferred size
- **Format**: GIF (best compatibility with GitHub)
- **File Size**: Keep under 10MB for optimal loading speed

---

### Option 2: Upload to Giphy

**Advantages:**
- No file size limits in your repository
- Easy to update without committing new files
- Can use Giphy's tools for optimization

**Steps:**
1. **Convert your video to GIF** (if needed) using the same tools as Option 1
2. **Upload to Giphy:**
   - Go to [giphy.com](https://giphy.com/)
   - Create an account or log in
   - Click "Upload" and select your GIF
   - After upload, click "Share" and copy the **GIF link** (not the embed code)
   - Make sure you copy the direct `.gif` URL

3. **Update README.md:**
   - Open the main `README.md` file
   - Find line 2 with the current image tag
   - Replace the `src` URL with your new Giphy URL
   - Example:
     ```html
     <img src="https://media.giphy.com/media/YOUR_GIF_ID/giphy.gif" width="1500" alt="Salah Khadir"/>
     ```

4. **Commit and push:**
   ```bash
   git add README.md
   git commit -m "Update profile banner to new Giphy"
   git push
   ```

---

## Current Status

The README is currently using an external Giphy URL. Once you add your new GIF using either option above, your profile banner will be updated!

## Need Help?

- Check that your GIF dimensions look good (preview before uploading)
- Test the URL/path to make sure the image displays correctly
- Keep file sizes reasonable for faster page loads
