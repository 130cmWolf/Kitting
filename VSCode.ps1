# カレントにパスが通っていない場合は通す
if (-not $env:path.Split(';').Contains('.\')) {
    $env:path = $env:path + ';.\'
}

# binへのパスが未登録ならカレントディレクトリ変更
$binPath = Join-Path ([Environment]::GetFolderPath('LocalApplicationData')) 'Programs\Microsoft VS Code\bin'
if ($env:path.IndexOf($binpath, [System.StringComparison]::OrdinalIgnoreCase) -eq -1) {
    cd $binPath
}

# ■ここから拡張

# 日本語パック
code --install-extension MS-CEINTL.vscode-language-pack-ja --force

# コーディング支援
code --install-extension visualstudioexptteam.vscodeintellicode --force

# C#
code --install-extension ms-vscode.csharp --force

# PowerShell
code --install-extension ms-vscode.powershell --force

# ブックマーク
code --install-extension alefragnani.Bookmarks --force
code --install-extension alefragnani.numbered-bookmarks --force

# 括弧強調
code --install-extension CoenraadS.bracket-pair-colorizer-2 --force

# Git
code --install-extension eamodio.gitlens --force
code --install-extension donjayamanne.githistory --force

# Markdown
code --install-extension yzhang.markdown-all-in-one --force
code --install-extension DavidAnson.vscode-markdownlint --force

# HTML
code --install-extension abusaidm.html-snippets --force
code --install-extension mkaufman.HTMLHint --force
code --install-extension Zignd.html-css-class-completion --force

# XML
code --install-extension DotJoshJohnson.xml --force

# TypeScript
code --install-extension eg2.tslint --force

# lint
code --install-extension taichi.vscode-textlint --force
code --install-extension ics.japanese-proofreading --force

# CSV
code --install-extension mechatroner.rainbow-csv --force
code --install-extension janisdd.vscode-edit-csv --force

# PostgreSQL
code --install-extension ms-ossdata.vscode-postgresql --force
code --install-extension bradymholt.pgformatter --force

# 全角スペース
code --install-extension mosapride.zenkaku --force

# インデント
code --install-extension oderwat.indent-rainbow --force

# ケース変更
code --install-extension wmaurer.change-case --force

