# Najdia Islam Shaj — Final Portfolio

This package is the final GitHub-ready static frontend plus the Supabase admin CMS.

## Files
- `index.html` — public portfolio
- `admin.html` — admin CMS/login
- `supabase.js` — Supabase project configuration
- `style.css` — portfolio design
- `profile.jpg.jpeg` — profile photo
- `SUPABASE_FINAL_MIGRATION.sql` — one-time DB migration for full Publish/Unpublish control

## Final personal details
- Name: Najdia Islam Shaj
- Department: Electrical and Electronic Engineering
- University: Jamalpur Science & Technology Univarsity , Jamalpur
- Session: 2022-2023
- Welcome text: Welcome to my Journey

## One-time Supabase step
Open Supabase → SQL Editor → paste and run `SUPABASE_FINAL_MIGRATION.sql` once.
This adds the `visibility` columns, preserves existing records by marking them published, and syncs the requested name, welcome text, department, university, and session.

The existing `status` fields are intentionally preserved for content labels such as learning status and project lifecycle status.

## Storage
Create a public Supabase Storage bucket named:
`portfolio-images`

Allow authenticated users to insert/update/delete objects as needed by the existing storage policies. Public visitors can read files because the bucket is public.

## GitHub Pages
1. Create a GitHub repository.
2. Upload all files from this folder to the repository root.
3. Open Settings → Pages.
4. Choose Deploy from a branch → `main` → `/(root)` → Save.
5. Wait for the Pages deployment, then open the generated public URL.

Do not put your Supabase service-role key in the repository. `supabase.js` contains only the browser-safe publishable key.
