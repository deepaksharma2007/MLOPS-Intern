import joblib
mind = joblib.load("model.pk1")

print("Welcome to the Salary Predictor APP")

exp = float(input("Enter the experience: "))


print("Salary: ",mind.predict([[exp]]))