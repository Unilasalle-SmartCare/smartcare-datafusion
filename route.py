app = Flask(__name__) # __name__ variável do sistema que indica o nome do módulo ou 'main'
    
@app.route("/caminhos_hora")
def caminhos_hora (dataHora = None):
    conn = pyodbc.connector.connect (host='bd-sistemasdistribuidos.chlktehzrzva.us-east-1.rds.amazonaws.com', user='admin', passwd='senha', port='3306', database='chinook')
    cursor = conn.cursor()
    //qstr = "select CustomerId, FirstName, LastName, Address, City, State from customers where Country =\'"+pais+"\'"
    qstr = "select A.DataHora , A.Valor , B.CodigoDispositivo , B.Eixo_X , B.Eixo_y , B.Orientacao case when B.Orientacao = '+X' then x = B.Eixo_X - (A.Valor * 0.5) and y = B.Eixo_y END when B.Orientacao = '+Y' then y = B.Eixo_y - (A.Valor * 0.5) and x = B.Eixo_X END when B.Orientacao = '-X' then x = B.Eixo_X + (A.Valor * 0.5) and y = B.Eixo_y END when B.Orientacao = '-Y' then y = B.Eixo_y + (A.Valor * 0.5) and x = B.Eixo_X END from Medicao A, Dispositivo B where A.IdDispositivo = B.IdDispositivo like A.DataHora =\'"+dataHora+"\'"
    print (qstr)
    query = cursor.execute(qstr)
    row_headers=[x[0] for x in cursor.description]
    records = cursor.fetchall()
    print (records)
    result = [dict(zip(tuple (row_headers) ,i)) for i in records]
    print (result)
    jret = jsonify(result)
    print (jret)
    conn.close()
    return jret
