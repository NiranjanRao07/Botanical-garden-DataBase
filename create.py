import streamlit as st
from database import add_data


def create():
    col1, col2 = st.columns(2)
    with col1:
        plant_id = st.text_input("plant_id")
        scientific_name = st.text_input("scientific_name")
        local_name = st.text_input("local_name")
    if st.button("Add Plant"):
        add_data(plant_id, scientific_name, local_name)
        st.success("Successfully added plant :{}".format(plant_id))
