from flask import Flask, render_template
import mariadb

app = Flask(__name__)
 
# MySQL configuration
#db_config = {
#    'host': 'tp4-mariadb',
#    'user': 'root',
#    'password': 'root',
#    'database': 'demosql'
#}

# Initialize MySQL connection
conn = mariadb.connect(
        user="root",
        password="root",
        host="tp4-mariadb",
        port=3307,
        database="demosql"
        )
cursor = conn.cursor() 


@app.route('/')
def index():
    # Sample query
    query = "SELECT * FROM myTable"
    cursor.execute(query)
    data = cursor.fetchall()
    
    # Close the cursor and connection
    cursor.close()
    conn.close()
    
    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)
    

