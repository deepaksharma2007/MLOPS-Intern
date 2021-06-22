import pandas as pd
from sklearn.linear_model import LinearRegression
import joblib


ds = pd.read_csv('SalaryData.csv')

y = ds['Salary']
x = ds['YearsExperience']

x =x.values.reshape(30,1)
y = y.values.reshape(30,1)

model = LinearRegression()

# create formula y = c + wx
model.fit(x,y)

joblib.dump(model , 'model.pk1')