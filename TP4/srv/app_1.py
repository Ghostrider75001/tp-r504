from flask import Flask, render_template
#import mariadb
import mysql.connector

app = Flask(__name__)
 
#MySQL configuration
db_config = {
    'host': 'tp4-mysql',
    'user': 'root',
    'password': 'root',
    'database': 'demosql'
}

# Initialize MariaDB connection
#conn = mariadb.connect(
#        user="root",
#        password="root",
#        host="172.18.0.2",
#        port=3307,
#        database="demosql"
#        )
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor() 


@app.route('/')
def index():
    # Sample query
    query = "SELECT * FROM myTable"
    cursor.execute(query)
    data = cursor.fetchall()
    
    # Close the cursor and connection
    #cursor.close()
    #conn.close()
    
    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)
    

