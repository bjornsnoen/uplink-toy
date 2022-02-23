from uplink import Consumer, returns


@returns.json
class MyAPI(Consumer):
    """Reproduces"""


my_api = MyAPI(base_url="https://example.com/")
