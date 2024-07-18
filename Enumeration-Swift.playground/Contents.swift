//
//  Enumeration.swift
//  Daily Journal App
//
//  Created by surendra on 15/07/24.
//

import Foundation

enum Animals{
    case cat
    case dog
    case rabbit
    case hedgeHog
}

let catObj = Animals.cat


if catObj == Animals.cat {
    "This is a cat"
} else if catObj == Animals.dog {
    "This is a dog"
} else {
    "This is something else"
}


switch catObj {
case .cat:
    "This is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
case .hedgeHog:
    "This is hedgehog"
    break
default:
    "This is something else"
}

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String )
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

switch wwwApple {
case .fileOrFolder(
    path: let path,
    name: let name):
    path
    name
   break
case .wwwUrl(path: let path):
    path
    break
case .song(
    artist: let artist,
    songName: let songName):
    artist
    songName
    break
}

// This is another way writing code
switch wwwApple {
case .fileOrFolder(
    let path,
    let name):
    path
    name
   break
case .wwwUrl(let path):
    path
    break
case .song(
    let artist,
     let songName):
    artist
    songName
    break
}


// Again another way to write more cleaner code
switch wwwApple {
case let .fileOrFolder(
    path,
    name):
    path
    name
   break
case let .wwwUrl(
    path):
    path
    break
case let .song(
    artist,
    songName):
    artist
    songName
    break
}



