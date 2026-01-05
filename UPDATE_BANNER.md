# Quick Guide: Update Your Profile Banner

Your GitHub profile has a banner GIF at the top. Here's how to replace it with your new video/GIF.

## 🎯 Recommended Approach: Add to Repository

This is the **best practice** for GitHub profile READMEs because:
- ✅ No external dependencies
- ✅ Always available
- ✅ You have full control
- ✅ Faster loading

### Steps:

1. **Prepare your GIF:**
   - If you have a video file (MP4, MOV, etc.), convert it to GIF first
   - Recommended tools:
     - Online: [ezgif.com](https://ezgif.com/) or [cloudconvert.com](https://cloudconvert.com/)
     - Command line: `ffmpeg -i your-video.mp4 -vf "fps=10,scale=1500:-1:flags=lanczos" banner.gif`

2. **Add the GIF to your repository:**
   ```bash
   # Copy your GIF to the assets folder
   cp /path/to/your/file.gif assets/banner.gif
   ```

3. **Update README.md:**
   - Open `README.md`
   - Go to line 2
   - Change this:
     ```html
     <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExaDBrbTFuemQ1MDA2OXg3bTVjdTg0amtobmdnMXp0N2h1emF1bmgwbSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/mDcWIH2PaMmG6TJcEo/giphy.gif" width="1500" alt="Salah Khadir"/>
     ```
   - To this:
     ```html
     <img src="./assets/banner.gif" width="1500" alt="Salah Khadir"/>
     ```

4. **Commit and push:**
   ```bash
   git add assets/banner.gif README.md
   git commit -m "Update profile banner with new GIF"
   git push
   ```

5. **Done!** Visit your profile to see the new banner: `https://github.com/SalahKhadir`

---

## Alternative: Use Giphy URL

If you prefer to host on Giphy instead:

1. Upload your GIF to [giphy.com](https://giphy.com/)
2. Get the direct GIF URL (must end with `.gif`)
3. Update line 2 in `README.md` with your new Giphy URL
4. Commit and push:
   ```bash
   git add README.md
   git commit -m "Update profile banner"
   git push
   ```

---

## Tips

- **File size**: Keep GIFs under 10MB for faster loading
- **Dimensions**: Current banner is 1500px wide - try to match that
- **Format**: GIF format is required for GitHub READMEs (videos won't display)
- **Preview**: Test your GIF in a local markdown viewer before pushing

## Questions?

Check the detailed guide in `assets/README.md` or the [GitHub Docs](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/customizing-your-profile/managing-your-profile-readme).
