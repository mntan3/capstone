from flask.ext.wtf import Form, TextField, TextAreaField, SubmitField

class SearchBar(Form):
    search = TextField("Search")
    submit = SubmitField("Send")
