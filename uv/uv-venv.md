# uv venv and missing pip

The amazing project `uv` speeds things up really quickly, especially when creating a virtual environment. This is great, but the venv created isn't a one-for-one when creating it with `python -m venv venv`.

When creating a virtual environment with `python -m venv venv` pip is installed by default. This isn't true with `uv venv venv`

In order to get the same behavior you need to run 

	uv venv venv --seed

Per the [docs](https://docs.astral.sh/uv/reference/cli/#uv-venv)

	--seed

		Install seed packages (one or more of: `pip`, `setuptools`, and `wheel`) into the virtual environment.

		Note `setuptools` and `wheel` are not included in Python 3.12+ environments.
