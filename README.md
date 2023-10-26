# Collection of Scripts

## Setup using `setup.sh`

```bash
bash <(curl -s https://raw.githubusercontent.com/seyLu/scripts/main/setup.sh)
```

## Manual Setup

1. Append on `~/.bash_aliases`

    ```bash
    # Initialize External Scripts
    [[ -z "${_SCRIPTS_PATH}" ]] && source "${HOME}/<path_to_scripts>/scripts/bash/__init__"
    ```
2. On Bash Shell, run
    
    ```bash
    $ build
    ```

3. Enjoy

