from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# adding configuration for using a sqlite database
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:@localhost/intern'
# Creating an SQLAlchemy instance
db = SQLAlchemy(app)


class Dog(db.Model):
    __tablename__ = 'dogs'
    dog_tag = db.Column(db.Integer, primary_key=True)
    d_name = db.Column(db.String(20))
    d_age = db.Column(db.String(20))
    d_type = db.Column(db.String(20))


@app.route("/")
def hello_world():
    dogs = Dog.query.all()
    
    return render_template('index.html', dogs=dogs)