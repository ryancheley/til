@default:
    just --list

@check:
    pre-commit run --all-files

@codespell:
    uv run --with codespell codespell -i 3

@til category title:
    ./til.sh {{category}} {{title}}