<div align="center">
    <img height=100 src="https://github.com/seyLu/scripts/blob/main/bash.svg" alt="Bash Scripts Icon">
    <h1>Bash Scripts</h1>
    <p>A collection of Bash aliases and scripts</p>
    <p>
        <a href="https://www.gnu.org/software/bash/manual/html_node/index.html"><img src="https://badgen.net/badge/icon/bash?icon=terminal&label&color=1f425f" alt="Python 3.11+ badge"></a>
        <a href="https://google.github.io/styleguide/shellguide.html"><img src="https://img.shields.io/badge/code%20style-google-shell.svg" alt="PEP8 badge"></a>
        <a href="https://github.com/seyLu/scripts/blob/main/LICENSE"><img src="https://img.shields.io/github/license/seyLu/scripts.svg" alt="MIT License"></a>
    </p>
    <p>
        <a href="https://github.com/seyLu/scripts/issues/new">Report Bug</a>
        ·
        <a href="https://github.com/seyLu/scripts/issues/new">Request Feature</a>
        ·
        <a href="https://github.com/seyLu/scripts/discussions">Ask Question</a>
    </p>
</div>

<br>

### Setup using `setup.sh` (Recommended)

```bash
curl -s https://raw.githubusercontent.com/seyLu/scripts/main/setup.sh | bash
```

<br>

### Manual Setup

#### 1. Clone the repo

```bash
git clone https://github.com/seyLu/scripts.git
```

#### 2. Append on `~/.bashrc`

```bash
# Initialize External Scripts
! alias reload &>/dev/null && source "${HOME}/<path_to_scripts>/scripts/bash/__init__"
```

#### 3. Then run

```bash
build
```

#### 4. Enjoy
