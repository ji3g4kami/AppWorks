print("========= Array =========")
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
myFriends.forEach { (friend) in
    print(friend)
}


// 6. Now I want to know who is at index 5 in the  myFriends  array. Find the answer for me. Please explain how do you get your answer and why the answer is it.
// print(myFriends[5])
// You will get an error because the index of myFriend ranges from 0 to 3

print("========= Dictionary =========")

// 1. Please create an dictionary with keys of type String, value of type Int, and save it in a variable named  myCountryNumber .
var myCountryNumber: [String:Int]

// 2. Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81.
myCountryNumber = ["US": 1, "GB":44, "JP": 81]

// 3. Remove ‘US’ key-value pair from  myCountryNumber  dictionary.
myCountryNumber.removeValue(forKey: "US")

// 4. Change the ‘GB’ value from 44 to 0.
myCountryNumber.updateValue(0, forKey: "GB")

// 5. Please find a method to get all keys from  myCountryNumber and a method to get all values from  myCountryNumber .
print(Array(myCountryNumber.keys))
print(Array(myCountryNumber.values))

print("========= For, While, Repeat =========")
// 1. Please use for-in loop to print the  myFriends  array and  myCountryNumber  dictionary (both key and value).
for myFriend in myFriends {
    print(myFriend)
}

// 2. Here is an array: let lottoNumbers = [1 0 , 9 ,   8,  7 , 6,  5 ] Please use for-in loop and Range to print the last three members in the  lottoNumbers array.
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for lottoNum in lottoNumbers[3...5]{
    print(lottoNum)
}

/* 3.When use for-in loop, we make the computer do the same thing multiple times. But the index in for-in loop is increasing by 1. What if we want to decreasing by -1 ? What if we want to increasing by 2 ? Please use loop to get the result in the console :
 5 6 7 8 9 10
 10 8 6
 Please find a method which can help us achieve these requirements.
*/
for i in 5...10 {
    print(i)
}
print("============")
for i in stride(from: 10, to: 4, by: -2) {
    print(i)
}


print("====== problem set 4 ======")
// 4.Please use while loop to solve above question.
var x = 0
while x<myFriends.count {
    print(myFriends[x])
    x += 1
}
print("============")
var y = 3
while y < lottoNumbers.count {
    print(lottoNumbers[y])
    y += 1
}
print("============")
var i = 5
while i<11 {
    print(i)
    i += 1
}
print("============")
var j = 10
while j > 5 {
    print(j)
    j -= 2
}

print("====== problem set 5 ======")
// 5.Please use repeat-while loop to solve above question (except 4).
x = 0
repeat{
    print(myFriends[x])
    x += 1
}while x < myFriends.count
print("============")
y = 3
repeat{
    print(lottoNumbers[y])
    y += 1
}while y < lottoNumbers.count
print("============")
i = 5
repeat{
    print(i)
    i += 1
}while i <= 10
print("============")
j = 10
repeat{
    print(j)
    j -= 2
}while j >= 6

print("========= If statement =========")
var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
}else{
    print("Although it’s sunny, I still don’t want to work today.")
}
print("========= Switch =========")
var jobLevel = 3
switch jobLevel {
case 1: print("Member")
case 2: print("Team Leader")
case 3: print("Manager")
case 4: print("Director")
default:
    print("We don't have this job")
}



