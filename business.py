import web
import datetime
import json
import sqlite3
import random

db = web.database(dbn='mysql', user='root', pw='', db='cpmall')

def getCurrentPhase(clientTime):
    if not db:
        return 'db open error'
    pass
    first_rec = db.query("SELECT kaipantime FROM cp_kaipanbjpk10 WHERE 1 ORDER BY phase LIMIT 1")[0]
    if first_rec['kaipantime'].date() != datetime.date.today():
        # two time not match, change the date of datetime in the sql
        _changeDateTimeAll(clientTime)
        return 'change the datetime, please visit once again'
    _changeStatus(clientTime)
    return db.query("SELECT * FROM cp_kaipanbjpk10 WHERE status = 2 ORDER BY phase LIMIT 1")[0]

def _getSpecificPhaseByStatus(status=2):
    # get the phase whose status = 2
    res = db.query("SELECT * FROM cp_kaipanbjpk10 WHERE status = 2 ORDER BY phase DESC LIMIT 1")
    if len(res) == 0:
        return
    return res[0]

def _getSpecficPhaseByDateTime(specificDateTime):
    # return db.query("SELECT * FROM cp_kaipanbjpk10 WHERE kaipantime <= '2016-09-04 10:14:14' AND fengpantime > '2016-09-04 10:14:14'")[0]
    tmp = specificDateTime.strftime("%Y-%m-%d %H:%M:%S")
    res = db.query("SELECT * FROM cp_kaipanbjpk10 WHERE kaipantime <= '" + tmp + "' AND fengpantime > '" + tmp + "'")
    if len(res) == 0:
        return
    return res[0]

# check and chagne the status of target phase according to the clientTime
def _changeStatus(currentTime):
    # currentTime = datetime.datetime.now()
    if not _getSpecificPhaseByStatus():
        # change the first phase if there isn't no item whose status == 2
        db.query("UPDATE cp_kaipanbjpk10 SET status = 2 WHERE status = 1 ORDER BY phase LIMIT 1")
        return
    kaipanTime = _getSpecificPhaseByStatus()['kaipantime']
    fengpanTime = _getSpecificPhaseByStatus()['fengpantime']
    if currentTime < kaipanTime:
        pass
    elif currentTime >= kaipanTime and currentTime < fengpanTime:
        # the line is no meaning
        pass
    elif currentTime >= fengpanTime:
        db.query("UPDATE cp_kaipanbjpk10 SET status = 3  WHERE fengpantime <= '"+currentTime.strftime("%Y-%m-%d %H:%M:%S")+"' ")
        tmp = _getSpecficPhaseByDateTime(currentTime)['phase']
        db.query("UPDATE cp_kaipanbjpk10 SET status = 2  WHERE phase ="+str(tmp)+" ORDER BY phase DESC LIMIT 1")
    pass

def _changeDateTimeAll(currentTime):
    results = db.query("SELECT * FROM cp_kaipanbjpk10 WHERE 1")
    now = currentTime
    for i in results:
        kaipantime = datetime.datetime.combine(now.date(),i['kaipantime'].time()).strftime("%Y-%m-%d %H:%M:%S")
        fengpantime = datetime.datetime.combine(now.date(),i['fengpantime'].time()).strftime("%Y-%m-%d %H:%M:%S")
        kaijiangtime = datetime.datetime.combine(now.date(),i['kaijiangtime'].time()).strftime("%Y-%m-%d %H:%M:%S")
        db.query("UPDATE cp_kaipanbjpk10 SET kaipantime = '"+kaipantime+"', fengpantime = '"+fengpantime+"', kaijiangtime = '"+kaijiangtime+"' WHERE id = "+str(i['id'])+" AND phase= "+str(i['phase'])+"")
    pass

def getBetsAsJsonStr():
    fp = open('./mock/db.json')
    content = fp.read()
    fp.close()
    content = json.loads(content)
    # make a deal with the actual bets , such as making them random
    # ...
    return content['bets'][0]

def addUser(username,password):
    conn = sqlite3.connect('./mock/data.db')
    c= conn.cursor()
    res = c.execute("select * from user where username = '"+username+"'").fetchall()
    if len(res) != 0:
        # exist the same username
        return 0
    # hack code , not safe, no check the exception
    c.execute("insert into user (username, password) values ('"+username+"', '"+password+"')")
    conn.commit()
    conn.close()
    return 1

def getUser(username, password):
    conn = sqlite3.connect('./mock/data.db')
    c = conn.cursor()
    res = c.execute("select balance, bill from user where username = '" + username + "' and password = '"+password+"'").fetchall()
    if len(res) == 1:
        if res[0][0] and res[0][1]:
            pass
        else:
            if res[0][0] == None: c.execute("update user set balance = "+str(round(random.uniform(1000, 10000), 2))+" where username = '"+username+"'")
            if res[0][1] == None: c.execute("update user set bill = "+str(round(random.uniform(50, 2000), 2))+" where username = '"+username+"'")
            conn.commit()
        res = c.execute("select balance, bill from user where username = '" + username + "'").fetchall()[0]
        return {'username': username, 'balance': res[0], 'bill': res[1]}
    return 0

def login(username, password):
    conn = sqlite3.connect('./mock/data.db')
    c = conn.cursor()
    res = c.execute("select * from user where username = '" + username + "' and password = '" + password + "'").fetchall()
    conn.close()
    if len(res) == 0:
        return 0
    return 1