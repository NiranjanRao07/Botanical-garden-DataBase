import streamlit as st
from create import create
from delete import delete
from read import read
from update import update


def main():
    st.title("botanical garden db")
    menu = ["Add", "View", "Edit", "Remove"]
    choice = st.sidebar.selectbox("Menu", menu)
    if choice == "Add":
        st.subheader("Enter Plant Details:")
        create()
    elif choice == "View":
        st.subheader("View created plants details")
        read()
    elif choice == "Edit":
        st.subheader("Update created plants details")
        update()
    elif choice == "Remove":
        st.subheader("Delete created plants details")
        delete()
    else:
        st.subheader("About plants")


if __name__ == '__main__':
    main()
