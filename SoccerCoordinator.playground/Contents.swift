//: Playground - noun: a place where people can play

import UIKit

// Defining player information

let playerInfo: [String: [String]] = [
                                  "Joe Smith": ["42", "YES", "Jim and Jan Smith"],
                                  "Jill Tanner": ["36",	"YES",	"Clara Tanner"],
                                  "Bill Bon": ["43", "YES",	"Sara and Jenny Bon"],
                                  "Eva Gordon": ["45", "NO", "Wendy and Mike Gordon"],
                                  "Matt Gill": ["40", "NO",	"Charles and Sylvia Gill"],
                                  "Kimmy Stein": ["41",	"NO",	"Bill and Hillary Stein"],
                                  "Sammy Adams": ["45",	"NO",	"Jeff Adams"],
                                  "Karl Saygan": ["42",	"YES",	"Heather Bledsoe"],
                                  "Suzane Greenberg": ["44", "YES",	"Henrietta Dumas"],
                                  "Sal Dali": ["41", "NO",	"Gala Dali"],
                                  "Joe Kavalier": ["39", "NO",	"Sam and Elaine Kavalier"],
                                  "Ben Finkelstein": ["44", "NO",	"Aaron and Jill Finkelstein"],
                                  "Diego Soto": ["41", "YES",	"Robin and Sarika Soto"],
                                  "Chloe Alaska": ["47", "NO",	"David and Jamie Alaska"],
                                  "Arnold Willis": ["43", "NO",	"Claire Willis"],
                                  "Phillip Helm": ["44", "YES",	"Thomas Helm and Eva Jones"],
                                  "Les Clay": ["42", "YES",	"Wynonna Brown"],
                                  "Herschel Krustofski": ["45",	"YES", "Hyman and Rachel Krustofski"]
                                 ]

var experiencedPlayerSharks = 0
var experiencedPlayerDragons = 0
var experiencedPlayerRaptors = 0
var inexperiencedPlayerSharks = 0
var inexperiencedPlayerDragons = 0
var inexperiencedPlayerRaptors = 0

//Defining three different teams

var sharks = [String: [String]]()
var dragons = [String: [String]]()
var raptors = [String: [String]]()

//Sorting players into different teams based on their experience such that all teams will have equal number of experienced players

for (player, details) in playerInfo {
    switch details[1] {
    case "YES" : if experiencedPlayerSharks <= 2 && sharks.count <= 6 {
        sharks[player] = details
        experiencedPlayerSharks += 1
    } else if experiencedPlayerDragons <= 2 && dragons.count <= 6 {
        dragons[player] = details
        experiencedPlayerDragons += 1
        }
    else if experiencedPlayerRaptors <= 2 && raptors.count <= 6 {
        raptors[player] = details
        experiencedPlayerRaptors += 1
        }
    case "NO" : if inexperiencedPlayerSharks <= 2 && sharks.count <= 6 {
        sharks[player] = details
        inexperiencedPlayerSharks += 1
    } else if inexperiencedPlayerDragons <= 2 && dragons.count <= 6 {
        dragons[player] = details
        inexperiencedPlayerDragons += 1
    }
    else if inexperiencedPlayerRaptors <= 2 && raptors.count <= 6 {
        raptors[player] = details
        inexperiencedPlayerRaptors += 1
        }

    default: break
    }
    
}

//Defining the collection of teams

var teams : [String: [String: [String]]] = ["Sharks": sharks, "Dragons": dragons, "Raptors": raptors]

//Generating personalised letters to guardians

for (team, details) in teams {
    switch team {
    case "Dragons": for(player, detail) in details {
        print("Your child \(player) has been placed on the \(team) team. All players of the \(team) are required to attend the practice session at 1PM on the 17th of March")
        }
    case "Sharks": for(player, detail) in details {
        print("Your child \(player) has been placed on the \(team) team. All players of the \(team) are required to attend the practice session at 3PM on the 17th of March")
        }
    case "Raptors": for(player, detail) in details {
        print("Your child \(player) has been placed on the \(team) team. All players of the \(team) are required to attend the practice session at 1PM on the 18th of March")
        }
 
    default: break
    }
    
}






