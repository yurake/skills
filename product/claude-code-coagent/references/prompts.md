## Prompt examples (pick & adapt)

- **Alternative options**
  - 目的: <goal>. 制約: <constraints>. 出力: 重要度順の案3件、各1行で。禁止: <bans>.
- **Risk review (diff/snippet)**
  - 次の差分で重大リスクがある箇所だけ箇条書きで。軽微は不要。<diff/snippet>
- **Performance ideas**
  - 目的: パフォーマンス改善。制約: API/型互換を変えない。出力: 改善案3件、効果と副作用を一言で。
- **Test plan**
  - 目的: 回帰を防ぐテストを洗い出す。対象: <area>. 出力: 優先度付きのテストケース箇条書き（前提/操作/期待）。
- **Scoped patch**
  - ファイル限定: <paths>. 仕様: <spec>. 期待: 完全なパッチのみ。禁止: 依存追加・大規模構造変更。
- **Unblocker**
  - 行き詰まり: <symptom>. ほしいもの: 打開策3件、各1行で。前提: <brief>.
