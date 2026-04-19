#!/bin/bash
# Usage: build.sh <page_folder> <title> <meta_description> <body_file>
set -e
PAGE=$1; TITLE=$2; META=$3; BODY=$4
DIR=$(dirname "$0")
OUT="$(cd "$DIR/.." && pwd)/$PAGE/index.html"
mkdir -p "$(dirname "$OUT")"
{
  cat <<HEAD
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="$META">
  <title>$TITLE</title>
  <meta property="og:type" content="website">
  <meta property="og:title" content="$TITLE">
  <meta property="og:description" content="$META">
  <meta property="og:site_name" content="PurchasePlus">
  <meta name="twitter:card" content="summary_large_image">
  <link rel="preconnect" href="https://fonts.googleapis.com" crossorigin>
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    body { font-family: 'Inter', sans-serif; background: #fff; color: #111827; }
    h1, h2, h3 { text-wrap: balance; }
  </style>
</head>
<body>
HEAD
  tail -n +23 "$DIR/_tmpl_top.html"
  cat "$BODY"
  cat "$DIR/_tmpl_bot.html"
} > "$OUT"
echo "Built: $OUT ($(wc -l < "$OUT") lines)"
