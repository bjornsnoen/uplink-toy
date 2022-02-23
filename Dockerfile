FROM python

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

WORKDIR /app
COPY ./pyproject.toml ./poetry.lock  /app/
COPY ./uplink_toy /app/uplink_toy

ENV PATH="/root/.poetry/bin:${PATH}"
RUN poetry install

CMD ["poetry", "run", "pyright", "--lib", "uplink_toy"]
