# Boiler plate for Poetry project
## Dependencies
### pyenv
```bash
brew update && brew install pyenv
```
### poetry
```bash
brew update && brew install pipx && pipx install poetry
```
install dotenv for poetry
```bash
poetry self add poetry-plugin-dotenv
```

## Command
```bash
./poetry-boiler-plate.sh PROJECT_NAME PYTHON_VERSION
```

## Created project's tree
```
new-project
├── README.md
├── new_project
│   └── __init__.py
├── pyproject.toml
└── tests
    └── __init__.py
```
