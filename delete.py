
import pandas as pd
import streamlit as st
from database import view_all_employee_data, view_only_emp_id, delete_data


def delete():
    result = view_all_employee_data()
    df = pd.DataFrame(result,  columns=[
                      'E_name', 'E_id', 'designation', 'garden_id'])
    with st.expander("Current data"):
        st.dataframe(df)
    list_of_plants = [i[0] for i in view_only_emp_id()]
    selected_plant = st.selectbox("Employee to Delete", list_of_plants)
    st.warning("Do you want to delete ::{}".format(selected_plant))
    if st.button("Delete employee"):
        delete_data(selected_plant)
        st.success("Employee has been removed successfully")
    new_result = view_all_employee_data()
    df2 = pd.DataFrame(new_result,  columns=[
                       'E_name', 'E_id', 'designation', 'garden_id'])
    with st.expander("Updated employee data"):
        st.dataframe(df2)
