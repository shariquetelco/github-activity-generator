for ($i=0; $i -lt 10; $i++) {
    $date = (Get-Date).AddDays(-$i).ToString("yyyy-MM-dd")
    "Commit on $date" | Out-File -FilePath "commit.txt"
    git add commit.txt
    git commit -m "Commit on $date" --date=$date
}
git push origin main