tasks = []

while True:
    print("\nLIGHTNING MCQUEEN'S TO-DO LIST")
    print("1. Add a task")
    print("2. View my to-do list")
    print("3. Mark a task as done")
    print("4. Remove a task")
    print("5. Quit")

    choice = int(input("Choose an option: "))

    if choice == 1:
        task = input("Enter a task: ")
        tasks.append(task)
        print("Task added successfully!")

    elif choice == 2:
        if len(tasks) == 0:
            print("No tasks.")
        else:
            for i in range(len(tasks)):
                print(i + 1, "-", tasks[i])

    elif choice == 3:
        num = int(input("Enter task number: "))
        tasks[num - 1] = tasks[num - 1] + " (Done)"
        print("Task marked as done!")

    elif choice == 4:
        num = int(input("Enter task number: "))
        tasks.pop(num - 1)
        print("Task removed!")

    elif choice == 5:
        print("Good bye!")
        break

    else:
        print("Invalid choice!")
