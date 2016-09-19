import web
import datetime
import time
import json

import business

urls = (
    '/(.*)', 'hello'
)
app = web.application(urls, globals())


class hello:
    def GET(self, name):
        web.data()
        return name

if __name__ == "__main__":
    app.run()