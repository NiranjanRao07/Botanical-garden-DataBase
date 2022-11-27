import mysql.connector
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    database="botanical_new"
)
c = mydb.cursor()


def add_data(P_id, S_Name, L_Name):
    c.execute('INSERT INTO plant VALUES (%s,%s,%s)',
              (P_id, S_Name, L_Name))
    mydb.commit()


def view_all_data():
    c.execute('SELECT * FROM plant')
    data = c.fetchall()
    return data


def view_all_employee_data():
    c.execute('SELECT * FROM employee')
    data = c.fetchall()
    return data


def view_only_plant_id():
    c.execute('SELECT plant_id FROM plant')
    data = c.fetchall()
    return data


def view_only_emp_id():
    c.execute('SELECT E_id FROM employee')
    data = c.fetchall()
    return data


def get_number(plant_id):
    c.execute('SELECT * FROM plant WHERE plant_id="{}"'.format(plant_id))
    data = c.fetchall()
    return data


def edit_data(new_P_id, new_L_Name):
    c.execute("update plant set local_name=%s where plant_id=%s",
              (new_L_Name, new_P_id, ))
    mydb.commit()


def delete_data(employee_id):
    c.execute('DELETE FROM employee WHERE E_id="{}"'.format(employee_id))
    mydb.commit()
