# tmux Cheatsheet

> prefix: `Ctrl-a` (기본값 Ctrl-b에서 변경됨)

## 기본 사용법

| 명령 | 설명 |
|---|---|
| `tmux` | 새 세션 시작 |
| `tmux new -s 이름` | 이름 지정해서 세션 시작 |
| `tmux ls` | 세션 목록 |
| `tmux attach -t 이름` | 세션에 다시 접속 |
| `tmux kill-session -t 이름` | 세션 종료 |

## 세션 관리

| 단축키 | 설명 |
|---|---|
| `prefix d` | 세션에서 빠져나오기 (detach) |
| `prefix s` | 세션 목록 보기/전환 |
| `prefix $` | 현재 세션 이름 변경 |

## 윈도우 (탭)

| 단축키 | 설명 |
|---|---|
| `prefix c` | 새 윈도우 |
| `prefix ,` | 현재 윈도우 이름 변경 |
| `prefix n` | 다음 윈도우 |
| `prefix p` | 이전 윈도우 |
| `prefix 0-9` | 번호로 윈도우 이동 |
| `prefix w` | 윈도우 목록 보기/전환 |
| `prefix &` | 현재 윈도우 닫기 |

## 패널 (분할)

| 단축키 | 설명 |
|---|---|
| `prefix \|` | 세로 분할 (커스텀) |
| `prefix -` | 가로 분할 (커스텀) |
| `prefix h` | 왼쪽 패널 이동 (커스텀) |
| `prefix j` | 아래 패널 이동 (커스텀) |
| `prefix k` | 위 패널 이동 (커스텀) |
| `prefix l` | 오른쪽 패널 이동 (커스텀) |
| `prefix z` | 현재 패널 줌 토글 |
| `prefix x` | 현재 패널 닫기 |
| `prefix q` | 패널 번호 표시 |
| `prefix {` | 패널 위치 앞으로 |
| `prefix }` | 패널 위치 뒤로 |

## 패널 크기 조절

| 단축키 | 설명 |
|---|---|
| `prefix Ctrl-↑↓←→` | 1칸씩 크기 조절 |
| `prefix Alt-↑↓←→` | 5칸씩 크기 조절 |

## 복사 모드

| 단축키 | 설명 |
|---|---|
| `prefix [` | 복사 모드 진입 |
| `q` | 복사 모드 나가기 |
| `Space` | 선택 시작 |
| `Enter` | 선택 복사 |
| `prefix ]` | 붙여넣기 |

> tmux-yank 플러그인으로 복사 시 시스템 클립보드에도 자동 복사됨

## Ghostty 연동 단축키

| 단축키 | 동작 |
|---|---|
| `Cmd+s` | tmux save-buffer (`prefix s`) |
| `Cmd+b` | tmux 패널 줌 토글 (`prefix z`) |

## 플러그인

| 플러그인 | 설명 |
|---|---|
| tpm | 플러그인 매니저 |
| tmux-sensible | 기본 설정 모음 |
| tmux-resurrect | 세션 저장/복원 |
| tmux-continuum | 자동 저장/자동 복원 |
| tmux-yank | 시스템 클립보드 연동 |
| catppuccin/tmux | 상태바 테마 |

### 플러그인 관리

| 단축키 | 설명 |
|---|---|
| `prefix I` | 플러그인 설치 |
| `prefix U` | 플러그인 업데이트 |
| `prefix Alt-u` | 미사용 플러그인 제거 |

### 세션 저장/복원 (resurrect)

| 단축키 | 설명 |
|---|---|
| `prefix Ctrl-s` | 세션 저장 |
| `prefix Ctrl-r` | 세션 복원 |

> continuum이 켜져 있으면 15분마다 자동 저장되고, tmux 시작 시 자동 복원됨
