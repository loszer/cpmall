import web
import datetime

db = web.database(dbn='mysql', user='root', pw='', db='cpmall')

def test(clientTime):
    if not db:
        return 'db open error'
    pass
    first_rec = db.query("SELECT kaipantime FROM cp_kaipanbjpk10 WHERE 1 ORDER BY phase LIMIT 1")[0]
    if first_rec['kaipantime'].date() != datetime.date.today():
        # two time not match, change the date of datetime in the sql
        _changeDateTimeAll(clientTime)
    _changeStatus(clientTime)
    return db.query("SELECT * FROM cp_kaipanbjpk10 WHERE status = 2 ORDER BY phase LIMIT 1")[0]

# def getCurrentPhase():
#     if _getSpecificPhaseByStatus()['phase'] != _getSpecficPhaseByDateTime(datetime.datetime.now())['phase']:
#         _changeStatus()
#         pass
#     return _getSpecificPhaseByStatus()

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
        db.query("UPDATE cp_kaipanbjpk10 SET status = 3  WHERE fengpantime <= '"+currentTime.strftime("%Y-%m-%d %H:%M:%S")+"' AND status = 2")
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