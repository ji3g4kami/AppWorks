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
