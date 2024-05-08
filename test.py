import sqlite3
import uuid
import string
import random
import os

print(f"Working directory is {os.getcwd()}")
conn = sqlite3.connect("squeeze.db")
conn.execute("CREATE TABLE data(uuid,info)")

print("Starting squeeze")

cnt = 0;
working=True
while working:
    next_id = str(uuid.uuid4())
    info = ''.join(random.choices(string.ascii_uppercase + string.digits, k=1024))
    s= f"""
    INSERT INTO data VALUES
      ('{next_id}','{info}')
    """
    #print(s)
    conn.execute(s)
    cnt = cnt + 1
    if cnt % 10000 == 0 and cnt != 0:
        print(f"Added {cnt}")
        conn.commit()

    if cnt > 100000:
        working=False

