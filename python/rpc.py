import requests
import json

import config

class RpcError(Exception):
    def __init__(self, **kwargs):
        self.strerror = kwargs["message"]
        self.errno = kwargs["code"]

def json_request(method, *params):
    jdata = {"method": method, "params": params}
    headers = {"Content-Type": "application/json", "Authorization": config.get("rpc_auth")}
    response = requests.post(config.get("rpc_url"), headers=headers, json=jdata)

    try:
        data = response.json()
    except ValueError as e:
        if response.status_code != requests.codes.ok:
            raise RpcError(code=response.status_code, message="HTTP status code")
        raise RpcError(code=500, message=str(e))

    if data["error"] is None:
        return data["result"]
    raise RpcError(**data["error"])

def get_block_template(longpollid):
    params = {"rules":["segwit"]}
    algo = "odo"
    if longpollid is not None:
        params["longpollid"] = longpollid
    return json_request("getblocktemplate", params, algo)

def submit_work(submit_data):
    return json_request("submitblock", submit_data) or "accepted"