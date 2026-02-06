# chezmoi Cheatsheet

> dotfiles 관리 도구. `~/.local/share/chezmoi`에 소스를 저장하고 홈 디렉토리에 적용

## 기본 개념

| 용어 | 설명 |
|---|---|
| source directory | `~/.local/share/chezmoi` (dotfiles 원본 저장소) |
| target directory | `~` (홈 디렉토리, 실제 적용 위치) |
| `dot_` 접두사 | `.`으로 변환됨 (예: `dot_zshrc` → `.zshrc`) |
| `dot_config/` | `.config/` 디렉토리에 매핑 |

## 파일 관리

| 명령 | alias | 설명 |
|---|---|---|
| `chezmoi add ~/.zshrc` | `cma ~/.zshrc` | 파일을 chezmoi 관리에 추가 |
| `chezmoi re-add` | `cmra` | 변경된 관리 파일 전부 소스에 반영 |
| `chezmoi forget ~/.zshrc` | | 파일을 관리에서 제거 (실제 파일은 유지) |
| `chezmoi managed` | `cmm` | 관리 중인 파일 목록 |
| `chezmoi unmanaged` | | 관리되지 않는 파일 목록 |

## 변경 확인 & 적용

| 명령 | alias | 설명 |
|---|---|---|
| `chezmoi diff` | `cmdf` | 소스와 타겟의 차이 확인 |
| `chezmoi status` | `cms` | 변경 상태 요약 |
| `chezmoi apply` | `cmap` | 소스를 타겟에 적용 |
| `chezmoi apply -v` | | 적용하면서 변경 내용 출력 |
| `chezmoi apply -n` | | dry-run (실제 적용하지 않음) |

## 편집

| 명령 | alias | 설명 |
|---|---|---|
| `chezmoi edit ~/.zshrc` | `cme ~/.zshrc` | 소스 파일을 에디터로 편집 |
| `chezmoi edit --apply ~/.zshrc` | | 편집 후 바로 적용 |
| `chezmoi cd` | `cmcd` | 소스 디렉토리로 이동 (서브셸) |

## 원격 저장소 동기화

| 명령 | alias | 설명 |
|---|---|---|
| `chezmoi git status` | | 소스 디렉토리에서 git status |
| `chezmoi git add .` | | 소스 디렉토리에서 git add |
| `chezmoi git commit -m "msg"` | | 소스 디렉토리에서 git commit |
| `chezmoi git push` | | 소스 디렉토리에서 git push |
| `chezmoi update` | `cmu` | git pull + apply (다른 머신에서 동기화) |

> `chezmoi cd`로 이동하면 직접 git 명령어를 쓸 수 있어서 더 편함

## 새 머신에 설치

```bash
# chezmoi 설치
sh -c "$(curl -fsLS get.chezmoi.io)"

# dotfiles 가져오기 + 적용
chezmoi init --apply git@github.com:okkyung2/dotfiles.git
```

## 일반적인 워크플로우

```bash
# 1. 설정 파일 수정
vi ~/.zshrc

# 2. 변경사항을 chezmoi에 반영
cmra                    # chezmoi re-add (모든 변경 반영)

# 3. 소스 디렉토리에서 커밋 & 푸시
cmcd                    # chezmoi cd
git add -A && git commit -m "update zshrc" && git push
exit                    # 서브셸 종료

# --- 다른 머신에서 ---
cmu                     # chezmoi update (pull + apply)
```

## alias 목록

| alias | 명령 | 설명 |
|---|---|---|
| `cm` | `chezmoi` | chezmoi 단축 |
| `cma` | `chezmoi add` | 파일 추가 |
| `cme` | `chezmoi edit` | 파일 편집 |
| `cmdf` | `chezmoi diff` | 차이 확인 |
| `cms` | `chezmoi status` | 상태 확인 |
| `cmap` | `chezmoi apply` | 적용 |
| `cmcd` | `chezmoi cd` | 소스 디렉토리 이동 |
| `cmu` | `chezmoi update` | 원격 동기화 |
| `cmra` | `chezmoi re-add` | 변경 파일 재추가 |
| `cmm` | `chezmoi managed` | 관리 파일 목록 |
