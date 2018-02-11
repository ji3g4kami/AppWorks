/*
 You should know how to declare array in swift. Add, remove, insert, read object in an array.
 You should be familiar with the following syntax :   append ,  insert ,  remove.
 Array is a dangerous stuff in swift. If you access the array with index which out of range,
 your app will crash with fatal error. Please interact with array very carefully.
 */
// 1. Please create an empty array with String data type and save it in a variable named myFriends.
var myFriends: [String] = []

// 2. I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name in to myFriends  array.
myFriends = myFriends + ["Ian", "Bomi", "Kevin"]

// 3. I forget to add ‘Michael’ who is one of my best friend. Please help me to add Michael to the end of  myFriends  array.
myFriends.append("Micheal")

// 4. Because I usually hang out with Kevin, please move Kevin to the begin of the  myFriends array.
myFriends.insert("Kevin", at: 0)
myFriends.remove(at: 3)

// 5. Use for...each to print all the friend in  myFriends   array.
for friend in myFriends{
    print(friend)
}

// 6. Now I want to know who is at index 5 in the  myFriends  array. Find the answer for me. Please explain how do you get your answer and why the answer is it.
// print(myFriends[5])
// You will get an error because the index of myFriend ranges from 0 to 3
