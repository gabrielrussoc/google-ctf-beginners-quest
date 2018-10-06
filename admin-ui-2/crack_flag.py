#!/usr/bin/env python3

flag = [0o204,0o223,0o201,0o274,0o223,0o260,0o250,0o230,0o227,0o246,0o264,0o224,0o260,0o250,0o265,0o203,0o275,0o230,0o205,0o242,0o263,0o263,0o242,0o265,0o230,0o263,0o257,0o363,0o251,0o230,0o366,0o230,0o254,0o370,0o272]
key = 0o307

flag = "".join(list(map(lambda x : chr(x^key), flag)))

print(flag)
