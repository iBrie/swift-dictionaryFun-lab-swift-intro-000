//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
          "Joe" : "Peanut Butter and Chocolate",
          "Tim" : "Natural Vanilla",
          "Sophie" : "Mexican Chocolate",
          "Deniz" : "Natural Vanilla",
          "Tom" : "Mexican Chocolate",
          "Jim" : "Natural Vanilla",
          "Susan" : "Cookies 'N' Cream"
          ]
  
  
  
    // 2.
  
  func names(forFlavor flavor: String) -> [String] {
    var names = [String]()
    for (name, favorite) in favoriteFlavorsOfIceCream{
      if flavor == favorite{
        names.append (name)
        
      }
    }
    return names

  }
  
  
  
  
    
    // 3.
    
    
  func count(forFlavor flavor: String) -> Int {
    var count = 0
    for (_, favorite) in favoriteFlavorsOfIceCream{
      if flavor == favorite{
        count += 1
      }
    }
    
    return count
    
      // 4.
   
  }
  func flavor(forPerson person: String) -> String? {
      if let personsFavIceCream = favoriteFlavorsOfIceCream[person] {
        return personsFavIceCream
      }
    return nil
    
  }

    // 5.
   
  func replace(flavor: String , forPerson person: String) -> Bool {
    if favoriteFlavorsOfIceCream[person] != nil{
      favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
      return true
      }
    return false
  }
  
    
    
    
    
    // 6.
  func remove(person: String) -> Bool {
    if favoriteFlavorsOfIceCream[person]   != nil{
    favoriteFlavorsOfIceCream.removeValue(forKey: person)
      return true
        }
   return false
  }
// 7.

  func numberOfAttendees()-> Int {
    let attendees = favoriteFlavorsOfIceCream.count
    return attendees
  }
      // 8.
    
  func add(person: String ,withFlavor flavor:String) -> Bool {
    if favoriteFlavorsOfIceCream[person] == nil {
      favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
        return true
      
    }
    return false
  }
  
  
    // 9.
    
  func attendeeList() -> String {
    var list = String()
    let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
    for name in allNames{
      if name == allNames.last {
          list += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
          } else {
          list += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)\n"
        }
    }
    return list
  }

}
