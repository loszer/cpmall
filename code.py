import web
import datetime
import time
import json
import random

import business

urls = (
    '/test', 'test',
    '/hello', 'hello',
    '/phases', 'phase',
    '/bets', 'bet',
    '/users', 'user',
    '/login', 'login'
)
app = web.application(urls, globals())


class test:
    def GET(self):
        web.header('Access-Control-Allow-Origin', '*')
        return web.input()['name']
    def POST(self):
        return web.input()['name']

class hello:
    def GET(self):
        web.header('Access-Control-Allow-Origin', '*')
        return business.getCurrentPhase(datetime.datetime.now())

class phase:
    def GET(self):
        web.header('Access-Control-Allow-Origin', '*')
        web.header('Content-Type', "text/json")
        res =  business.getCurrentPhase(datetime.datetime.now())
        return json.dumps({'status_code': 200, 'msg': 'get the phase success', 'data':{'id': res['id'], 'phase': res['phase']}})

class bet:
    def GET(self):
        web.header('Access-Control-Allow-Origin', '*')
        web.header('Content-Type', "text/json")
        bets = business.getBetsAsJsonStr()
        # return json.dumps(bets)
        for  i in range(len(bets['data'])):
            for k in bets['data'][i].keys():
                if 'position' in k:
                    continue
                bets['data'][i][k] = round(random.uniform(0.5, 2), random.randint(2, 4))
        # bets['phase'] = business.getCurrentPhase(datetime.datetime.now())['phase']
        return json.dumps(bets)

class user:
    def GET(self):
        web.header('Access-Control-Allow-Origin', '*')
        web.header('Content-Type', 'text/json')
        if not (web.input().has_key('username') and web.input().has_key('password')):
            return json.dumps({'status_code': 1001, 'msg': 'lack the necessary param'})
        res = business.getUser(web.input()['username'], web.input()['password'])
        if not res:
            return json.dumps({'status_code': 100, 'msg': 'no these user'})
        return json.dumps({'status_code': 200, 'msg': 'get the user info without password', 'data': res})
    def POST(self):
        web.header('Access-Control-Allow-Origin', '*')
        web.header('Content-Type', 'text/json')
        user_data = web.input()
        if not business.addUser(user_data['username'],user_data['password']):
            return json.dumps({'status': 'error', 'msg': 'some error'})
        return  json.dumps({'status': 'success', 'msg': 'logon success'})
    def PUT(self):
        web.header('Access-Control-Allow-Origin', '*')
        return 'put'
    def DELETE(self):
        web.header('Access-Control-Allow-Origin', '*')
        return 'delete'

class login:
    def GET(self):
        web.header('Access-Control-Allow-Origin', '*')
        web.header('Content-Type', 'text/json')
        # check the username and passworld filed not empty
        # ...
        user_data = web.input()
        if business.login(user_data['username'], user_data['password']):
            return json.dumps({"status_code": 200})
        return json.dumps({"status_code": 100, "msg": "login failed"})

if __name__ == "__main__":
    app.run()