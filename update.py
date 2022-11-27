import pandas as pd
import streamlit as st
from database import view_all_data, view_only_plant_id, get_number, edit_data


def update():
    result = view_all_data()
    df = pd.DataFrame(
        result, columns=['plant_id', 'scientific_name', 'local_name'])
    with st.expander("Plant List"):
        st.dataframe(df)
    list_of_plants = [i[0] for i in view_only_plant_id()]
    selected_plant = st.selectbox("Plant to Edit", list_of_plants)
    selected_result = get_number(selected_plant)
    if selected_result:
        plant_id = selected_result[0][0]
        scientific_name = selected_result[0][1]
        local_name = selected_result[0][2]
        col1, col2 = st.columns(2)
        with col1:
            new_plant_id = st.text_input("plant_id", plant_id)
            new_scientific_name = st.text_input(
                "scientific_name:", scientific_name)
            new_local_name = st.text_input("local_name:", local_name)
        if st.button("Update"):
            edit_data(new_plant_id,
                      new_local_name)
