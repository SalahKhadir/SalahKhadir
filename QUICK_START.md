# 🎯 Quick Start: Update Your Profile Banner

**Question:** "I have the video locally should I add it to the repo or upload it as giphy or what"

**Answer:** **Add it to the repository!** ✅

---

## ⚡ Fastest Way (3 Steps)

### 1. Convert Your Video to GIF
- **Online (Easiest):** Go to [ezgif.com/video-to-gif](https://ezgif.com/video-to-gif)
  - Upload your video
  - Adjust size to 1500px width
  - Download the GIF

### 2. Run the Script
```bash
./update_banner.sh /path/to/your/downloaded.gif
```

### 3. Push to GitHub
```bash
git push
```

**Done! 🎉** Your profile will show the new banner.

---

## 📚 Need More Info?

- **RECOMMENDATION.md** - Why add to repo vs Giphy?
- **UPDATE_BANNER.md** - Detailed step-by-step guide
- **assets/README.md** - Advanced options and guidelines

---

## 🔧 Manual Method (If You Prefer)

1. Put your GIF in: `assets/banner.gif`
2. Edit `README.md` line 2:
   - Change: `src="https://media1.giphy.com/..."`
   - To: `src="./assets/banner.gif"`
3. Commit and push:
   ```bash
   git add assets/banner.gif README.md
   git commit -m "Update profile banner"
   git push
   ```

---

## ❓ Why Not Giphy?

**Repository approach is better because:**
- ✅ No external dependencies
- ✅ Always available
- ✅ Faster loading
- ✅ You have full control
- ✅ Industry best practice

But if you really want to use Giphy, see **UPDATE_BANNER.md** for instructions.

---

**Current Status:** Everything is set up! Just add your GIF and run the script. 🚀
