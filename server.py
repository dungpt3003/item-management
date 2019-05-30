from bottle import route, run, response
import json
import sqlite3

conn = sqlite3.connect('database.db')

def select_items_by_type(type):
    c = conn.cursor()
    result = []
    command = 'SELECT * FROM items where classification=\'{}\';'.format(type)
    for item in c.execute(command):
        curr = {}
        curr['id'], curr['item'], curr['reuse_potential'], curr['reuse_demand'], curr['classification']  = item
        result.append(curr)
    print(result)
    conn.commit()
    return result


@route('/hello/<name>')
def index(name):
    response.headers['Content-Type'] = 'application/json'
    return json.dumps({'name': name})

@route('/items/<type>')
def call_init(type):
    res = select_items_by_type(type)
    response.headers['Content-Type'] = 'application/json'
    return json.dumps(res)

run(host='localhost', port=8080)
