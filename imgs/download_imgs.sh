#!/bin/bash
# Beyblade Collection Tracker - Image Downloader
# Run this script in the imgs/ folder to download product images
# Usage: bash download_imgs.sh

WIKI_BASE="https://static.wikia.nocookie.net/beyblade/images"
OUT="."

declare -A IMAGES=(
  # BEYBLADE X — BX Series
  ["BX-01_DranSword"]="https://static.wikia.nocookie.net/beyblade/images/5/5a/DranSword_3-60F_TT.png"
  ["BX-02_HellsScythe"]="https://static.wikia.nocookie.net/beyblade/images/b/b5/HellsScythe_4-60T_TT.png"
  ["BX-03_WizardArrow"]="https://static.wikia.nocookie.net/beyblade/images/c/c0/WizardArrow_4-80B_TT.png"
  ["BX-04_KnightShield"]="https://static.wikia.nocookie.net/beyblade/images/1/1d/KnightShield_3-80N_TT.png"
  ["BX-13_KnightLance"]="https://static.wikia.nocookie.net/beyblade/images/5/58/KnightLance_4-80HN_TT.png"
  ["BX-15_LeonClaw"]="https://static.wikia.nocookie.net/beyblade/images/3/35/LeonClaw_5-60P_TT.png"
  ["BX-19_RhinoHorn"]="https://static.wikia.nocookie.net/beyblade/images/d/d0/RhinoHorn_3-80S_TT.png"
  ["BX-23_PhoenixWing"]="https://static.wikia.nocookie.net/beyblade/images/e/eb/PhoenixWing_9-60GF_TT.png"
  ["BX-26_UnicornSting"]="https://static.wikia.nocookie.net/beyblade/images/2/2e/UnicornSting_5-60GP_TT.png"
  ["BX-33_WeissTiger"]="https://static.wikia.nocookie.net/beyblade/images/4/49/WeissTiger_3-60U_TT.png"
  ["BX-34_CobaltDragoon"]="https://static.wikia.nocookie.net/beyblade/images/6/6a/CobaltDragoon_2-60C_TT.png"
  ["BX-38_CrimsonGaruda"]="https://static.wikia.nocookie.net/beyblade/images/3/38/CrimsonGaruda_4-70TP_TT.png"
  # UX Series
  ["UX-01_DranBuster"]="https://static.wikia.nocookie.net/beyblade/images/a/a4/DranBuster_1-60A_TT.png"
  ["UX-02_HellsHammer"]="https://static.wikia.nocookie.net/beyblade/images/8/8d/HellsHammer_3-70H_TT.png"
  ["UX-03_WizardRod"]="https://static.wikia.nocookie.net/beyblade/images/0/00/WizardRod_5-70DB_TT.png"
  ["UX-06_LeonCrest"]="https://static.wikia.nocookie.net/beyblade/images/c/ca/LeonCrest_7-60GN_TT.png"
  ["UX-08_SilverWolf"]="https://static.wikia.nocookie.net/beyblade/images/5/5e/SilverWolf_3-80FB_TT.png"
  ["UX-09_SamuraiSaber"]="https://static.wikia.nocookie.net/beyblade/images/2/2e/SamuraiSaber_2-70L_TT.png"
  ["UX-11_ImpactDrake"]="https://static.wikia.nocookie.net/beyblade/images/9/90/ImpactDrake_9-60LR_TT.png"
)

echo "Downloading Beyblade X images..."
for name in "${!IMAGES[@]}"; do
  url="${IMAGES[$name]}"
  out_file="${name}.png"
  echo "  -> $out_file"
  curl -sL "$url" -o "$out_file" --user-agent "Mozilla/5.0" || echo "  FAILED: $url"
done

echo ""
echo "Done. Check imgs/ folder for downloaded files."
echo "Note: Some images may fail if wiki URLs have changed."
echo "Manually search https://beyblade.fandom.com for missing ones."
