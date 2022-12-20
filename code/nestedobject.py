jira = {'epic':{'story':'task','subtask':'10'},'workflow':{'backlog':'todo','inprogress':'intest'}}
obj = input("Enter obj:")
key = input("Enter key:")
result = jira[str(obj)].get(str(key))
print("value=",result)