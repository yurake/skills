---
name: pr-create
description: PR 作成手順を自動化するためのガイド。依頼を受けたとき、または 参照しているTODOファイル の「PR 作成」以外が完了したタイミングでタイトル・本文整形、テンプレ適用、MCP での PR 作成を行う。
---

# 目的
- Conventional Commits 形式のタイトルと所定テンプレを満たす PR を作成する。
- プレースホルダを埋め忘れずに create_pull_request を実行し、再実行手順も残す。

# 前提
- ブランチは作業内容に合致している（例: feat|fix|chore|docs/<slug>）。
- コミットは完了し、`git status` がクリーン。
- `.github/pull_request_template.md` が最新。

# 手順
1. テンプレ確認  
   - `.github/pull_request_template.md` を読み、各項目とプレースホルダを把握する。
2. タイトル決定  
   - 形式: `type: RM-XXX <slug>`（例: `fix: RM-074 readme badges`）  
   - type は Conventional Commits（例: feat / fix / chore / docs / refactor / ci）。
3. 本文作成  
   - テンプレに沿って記入し、`## 関連リンク` 等の `#<番号>` や `docs/todo/...` のプレースホルダを必ず実値に置換する。  
   - `/tmp/pr_body.md` など書き込み可能なパスに本文を保存する。
4. PR 作成（GitHub MCP）  
   - `create_pull_request` を使い、`title` に決定したタイトル、`body` に `/tmp/pr_body.md` の内容文字列を渡す。  
   - 失敗した場合はエラーメッセージを確認し、再実行手順を用意する。
5. 再実行ワンライナー共有（失敗時）  
   - 例: `gh pr create --title "<title>" --body-file /tmp/pr_body.md --fill` など、CLI で他の人が再実行できる一行コマンドを示す。
6. 完了確認  
   - PR URL を控え、必要なら ToDo や共有先に記録する。

# チェックリスト
- [ ] タイトルが `type: RM-XXX <slug>` 形式か
- [ ] テンプレ必須項目を全て埋めたか
- [ ] `#<番号>` や `docs/todo/...` のプレースホルダが残っていないか
- [ ] `/tmp/pr_body.md` など一時ファイルに本文を書き出したか
- [ ] `create_pull_request` へタイトル・本文を正しく渡したか
- [ ] 失敗時の再実行ワンライナーを共有したか
