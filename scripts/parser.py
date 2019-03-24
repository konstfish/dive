#!/usr/local/bin/python3
# -*- coding: utf-8 -*-

import json

filename = "dive/data.json"

def read():
    with open(filename, 'r') as f:
        data = json.load(f)
        return data

def get_headset():
    data = read()
    return data["bt_headset"]

def get_vpn():
    data = read()
    return data["vpn_name"]

def get_adapter():
    data = read()
    return data["nw_adapter"]

def get_platform():
    data = read()
    return data["platform"]
