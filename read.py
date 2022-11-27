import pandas as pd
import streamlit as st
import plotly.express as px
from database import view_all_data


def read():
    result = view_all_data()
    # st.write(result)
    df = pd.DataFrame(
        result, columns=['plant_id', 'scientific_name', 'local_name'])
    with st.expander("View all plants"):
        st.dataframe(df)
        task_df = df['plant_id'].value_counts().to_frame()
        task_df = task_df.reset_index()
        st.dataframe(task_df)
        p1 = px.pie(task_df, names='index', values='plant_id')
        st.plotly_chart(p1)
