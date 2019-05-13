require 'faker'

Artist.create(name: "Kanye West" , genre: "chicago rap", image: "https://i.scdn.co/image/a12d8543e28d71d9f1e7f5f363c1a6c73316f9e6" )
Artist.create(name: "JPEGMAFIA", genre: "alternative hip hop", image: "https://i.scdn.co/image/daed5d13c49165d792835f5b6a4be41237e91ea2" )
Artist.create(name: "Ariana Grande", genre: "dance pop", image: "https://i.scdn.co/image/b1dfbe843b0b9f54ab2e588f33e7637d2dab065a")
Artist.create(name: "Janelle Monáe", genre: "alternative r&b", image: "https://i.scdn.co/image/01725ba396132ac8166d89d5c5d9b4afc3b83229")
Artist.create(name: "The National", genre: "chamber pop", image: "https://i.scdn.co/image/21b165584e04249611a0f8091f2dfcebdbf3d958")
Artist.create(name: "Kero Kero Bonito", genre: "escape room", image: "https://i.scdn.co/image/49306940d6b77d8d981df216252c4ec27e552248")
Artist.create(name: "Billie Eilish", genre: "electropop", image: "https://i.scdn.co/image/bcf71477d890a736eb769dc5f8af4e7d28278824")
Artist.create(name: "Chance the Rapper", genre: "chicago rap", image: "https://i.scdn.co/image/f5aceffb43876273fa72b7c3c002d7e3218075fd")
Artist.create(name: "My Chemical Romance", genre: "emo", image: "https://i.scdn.co/image/160080823e35fcf4d47c8dfad20f5b13c7acf921")
Artist.create(iname: "MGMT", genre: "alternative dance", image: "https://i.scdn.co/image/552cc07e487a1dc7fd91d680824086b4daff8fc8")

User.create(email: "kevinkangg@gmail.com", provider: nil, uid: nil, name: "Kevin Kang", image: nil)
User.create(email: "sam@isbeautiful.com", provider: nil, uid: nil, name: "Samantha", image: nil)
User.create(email: "k3131n@gmail.com", provider: "facebook", uid: "10214987847594507", name: "Kevin Kang", image: "http://graph.facebook.com/v2.10/10214987847594507/picture")

Album.create(
    name: "ye",
    release_date: "2018-06-01",
    number_of_tracks: 7,
    images: "https://i.scdn.co/image/05cf2f8b56e595bcbf50fccb894f5fb6c2427750",
    artist_id: 1,
    copyrights: "© 2018 Getting Out Our Dreams II, LLC Distributed By Def Jam, A Division of UMG Recordings, Inc.",
    external_urls: "https://open.spotify.com/album/2Ek1q2haOnxVqhvVKqMvJe",
    label: "Getting Out Our Dreams, Inc./Def Jam Recordings")
Album.create(
    name: "Veteran",
    release_date: "2018-08-22",
    number_of_tracks: 19,
    images: "https://i.scdn.co/image/ebfedd05b1cbb3c829e1db445a73fe573a7029d5",
    artist_id: 2,
    copyrights: "© 2018 Peggy/Deathbomb Arc.",
    external_urls: "https://open.spotify.com/album/51WLEfPEEkzAWurvuY6Gco",
    label: "EQT Recordings, LLC")
Album.create(
    name: "thank u, next",
    release_date: "2019-02-08",
    number_of_tracks: 12,
    images: "https://i.scdn.co/image/4edc7914bfab6ecb0a0faa49e09b33557009c1b0",
    artist_id: 3,
    copyrights: "© 2019 Republic Records, a division of UMG Recordings, Inc.",
    external_urls: "https://open.spotify.com/album/2fYhqwDWXjbpjaIJPEfKFw",
    label: "Republic Records")
Album.create(
    name: "Dirty Computer",
    release_date: "2018-04-27",
    number_of_tracks: 14,
    images: "https://i.scdn.co/image/70b82c4eda3143f217020a47a77acfdf6b45db35",
    artist_id: 4,
    copyrights: "2018 Bad Boy Records LLC for the United States and WEA International Inc. for the world outside of the United States.",
    external_urls: "https://open.spotify.com/album/2PjlaxlMunGOUvcRzlTbtE",
    label: "Bad Boy Records")
Album.create(
    name: "Boxer Live in Brussels",
    release_date: "2018-07-13",
    number_of_tracks: 12,
    images: "https://i.scdn.co/image/41639affc15516ae0e6753f5e71599ead3f5fea7",
    artist_id: 5,
    copyrights: "2018 4AD Ltd",
    external_urls: "https://open.spotify.com/album/44QWVzSZGGPFyJkTsfjzWA",
    label: "4AD")
Album.create(
    name: "Sweetener",
    release_date: "2018-08-17",
    number_of_tracks: 15,
    images: "https://i.scdn.co/image/381891c42f301e0abaa1b1dcfbf0390334e698eb",
    artist_id: 3,
    copyrights: "© 2018 Republic Records, a Division of UMG Recordings, Inc.",
    external_urls: "https://open.spotify.com/album/3tx8gQqWbGwqIGZHqDNrGe",
    label: "Republic Records")
Album.create(
    name: "Time 'n' Place",
    release_date: "2018-10-01",
    number_of_tracks: 12,
    images: "https://i.scdn.co/image/f812bfda55468d434745eec98edc9a982034b6ab",
    artist_id: 6,
    copyrights: "2018 Polyvinyl Record Co.",
    external_urls: "https://open.spotify.com/album/5Az98PddCKwVoorl9pK6U7",
    label: "Polyvinyl Records")
Album.create(
    name: "WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?",
    release_date: "2019-03-29",
    number_of_tracks: 14,
    images: "https://i.scdn.co/image/16160e9999e3395dfdef718d2e7cc8432d728920",
    artist_id: 7,
    copyrights: "© 2019 Darkroom/Interscope Records",
    external_urls: "https://open.spotify.com/album/0S0KGZnfBGSIssfF54WSJh",
    label: "Darkroom/Interscope Records")
Album.create(
    name: "The Life Of Pablo",
    release_date: "2016-06-10",
    number_of_tracks: 20,
    images: "https://i.scdn.co/image/443372cd2c6d4245833fb46ac1c5dabca00c78a9",
    artist_id: 1,
    copyrights: "© 2016 Getting Out Our Dreams II, LLC, Distributed By Def Jam, A Division of UMG Recordings, Inc.Good Music ™ and associated logo are trademarks of Mascotte Holdings, Inc. All rights reserved.",
    external_urls: "https://open.spotify.com/album/7gsWAHLeT0w7es6FofOXk1",
    label: "Rock The World/IDJ/Kanye LP7")
Album.create(
    name: "Coloring Book",
    release_date: "2016-05-27",
    number_of_tracks: 14,
    images: "https://i.scdn.co/image/717290460ec646ffa372c7f483835eaacfea34f7",
    artist_id: 8,
    copyrights: "2016 Chance the Rapper",
    external_urls: "https://open.spotify.com/album/71QyofYesSsRMwFOTafnhB",
    label: "Chance the Rapper")
Album.create(
    name: "The Black Parade",
    release_date: "2006-10-23",
    number_of_tracks: 14,
    images: "https://i.scdn.co/image/767fd98433e0d4ad11bc0e8edf605872bcb7a02c",
    artist_id: 9,
    copyrights: "2006 Reprise Records for the U.S. and WEA International Inc. for the world outside the U.S.",
    external_urls: "https://open.spotify.com/album/0FZK97MXMm5mUQ8mtudjuK",
    label: "Reprise")
Album.create(
    name: "Little Dark Age",
    release_date: "2018-02-09",
    number_of_tracks: 10,
    images: "https://i.scdn.co/image/9a14bb92d918a4adb70d15f01d14c59cddb7667f",
    artist_id: 10,
    copyrights: "(P) 2017, 2018 Columbia Records, a Division of Sony Music Entertainment",
    external_urls: "https://open.spotify.com/album/7GjVWG39IOj4viyWplJV4H",
    label: "Columbia")


Vinyl.create(user_id: 1, album_id: 3, rating: 8)
Vinyl.create(user_id: 1, album_id: 8, rating: 7)
Vinyl.create(user_id: 1, album_id: 6, rating: 6)
Vinyl.create(user_id: 1, album_id: 1, rating: 5)
Vinyl.create(user_id: 1, album_id: 12, rating: 8)
Vinyl.create(user_id: 2, album_id: 8, rating: 6)
Vinyl.create(user_id: 2, album_id: 4, rating: 3)
Vinyl.create(user_id: 2, album_id: 10, rating: 8)
Vinyl.create(user_id: 2, album_id: 9, rating: 9)
Vinyl.create(user_id: 2, album_id: 6, rating: 2)
Vinyl.create(user_id: 3, album_id: 2, rating: 1)
Vinyl.create(user_id: 3, album_id: 3, rating: 3)
Vinyl.create(user_id: 3, album_id: 5, rating: 7)
Vinyl.create(user_id: 3, album_id: 11, rating: 7)
Vinyl.create(user_id: 3, album_id: 7, rating: 5)


Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 8, recommend: Faker::Boolean.boolean, user_id: 1, album_id: 3, title: Faker::Lorem.sentence(4), vinyl_id: 1)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 7, recommend: Faker::Boolean.boolean, user_id: 1, album_id: 8, title: Faker::Lorem.sentence(4), vinyl_id: 2)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 6, recommend: Faker::Boolean.boolean, user_id: 1, album_id: 6, title: Faker::Lorem.sentence(4), vinyl_id: 3)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 5, recommend: Faker::Boolean.boolean, user_id: 1, album_id: 1, title: Faker::Lorem.sentence(4), vinyl_id: 4)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 8, recommend: Faker::Boolean.boolean, user_id: 1, album_id: 12, title: Faker::Lorem.sentence(4), vinyl_id: 5)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 6, recommend: Faker::Boolean.boolean, user_id: 2, album_id: 8, title: Faker::Lorem.sentence(4), vinyl_id: 6)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 3, recommend: Faker::Boolean.boolean, user_id: 2, album_id: 4, title: Faker::Lorem.sentence(4), vinyl_id: 7)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 8, recommend: Faker::Boolean.boolean, user_id: 2, album_id: 10, title: Faker::Lorem.sentence(4), vinyl_id: 8)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 9, recommend: Faker::Boolean.boolean, user_id: 2, album_id: 9, title: Faker::Lorem.sentence(4), vinyl_id: 9)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 2, recommend: Faker::Boolean.boolean, user_id: 2, album_id: 6, title: Faker::Lorem.sentence(4), vinyl_id: 10)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 1, recommend: Faker::Boolean.boolean, user_id: 3, album_id: 2, title: Faker::Lorem.sentence(4), vinyl_id: 11)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 3, recommend: Faker::Boolean.boolean, user_id: 3, album_id: 3, title: Faker::Lorem.sentence(4), vinyl_id: 12)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 7, recommend: Faker::Boolean.boolean, user_id: 3, album_id: 5, title: Faker::Lorem.sentence(4), vinyl_id: 13)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 7, recommend: Faker::Boolean.boolean, user_id: 3, album_id: 11, title: Faker::Lorem.sentence(4), vinyl_id: 14)
Review.create(content: Faker::Lorem.paragraph(2, false, 4), rating: 5, recommend: Faker::Boolean.boolean, user_id: 3, album_id: 7, title: Faker::Lorem.sentence(4), vinyl_id: 15)

Track.create(name: "I Thought About Killing You", duration_ms: 274186, explicit: true, track_number: 1, album_id: 1)
Track.create(name: "Yikes", duration_ms: 188773, explicit: true, track_number: 2, album_id: 1)
Track.create(name: "All Mine", duration_ms: 145506, explicit: true, track_number: 3, album_id: 1)
Track.create(name: "Wouldn't Leave", duration_ms: 205546, explicit: true, track_number: 4, album_id: 1)
Track.create(name: "No Mistakes", duration_ms: 123040, explicit: true, track_number: 5, album_id: 1)
Track.create(name: "Ghost Town", duration_ms: 271386, explicit: true, track_number: 6, album_id: 1)
Track.create(name: "Violent Crimes", duration_ms: 215320, explicit: true, track_number: 7, album_id: 1)
Track.create(name: "1539 N. Calvert", duration_ms: 157258, explicit: true, track_number: 1, album_id: 2)
Track.create(name: "Real Nega", duration_ms: 150933, explicit: true, track_number: 2, album_id: 2)
Track.create(name: "Thug Tears", duration_ms: 198310, explicit: true, track_number: 3, album_id: 2)
Track.create(name: "Dayum", duration_ms: 85109, explicit: true, track_number: 4, album_id: 2)
Track.create(name: "Baby I'm Bleeding", duration_ms: 152245, explicit: true, track_number: 5, album_id: 2)
Track.create(name: "My Thoughts On Neogaf Dying", duration_ms: 93807, explicit: true, track_number: 6, album_id: 2)
Track.create(name: "Rock N Roll Is Dead", duration_ms: 188308, explicit: true, track_number: 7, album_id: 2)
Track.create(name: "DD Form 214", duration_ms: 195187, explicit: true, track_number: 8, album_id: 2)
Track.create(name: "Germs", duration_ms: 161486, explicit: true, track_number: 9, album_id: 2)
Track.create(name: "Libtard Anthem", duration_ms: 80000, explicit: true, track_number: 10, album_id: 2)
Track.create(name: "Panic Emoji", duration_ms: 180011, explicit: true, track_number: 11, album_id: 2)
Track.create(name: "DJ Snitch Bitch Interlude", duration_ms: 83515, explicit: true, track_number: 12, album_id: 2)
Track.create(name: "Whole Foods", duration_ms: 124332, explicit: true, track_number: 13, album_id: 2)
Track.create(name: "Macaulay Culkin", duration_ms: 117482, explicit: true, track_number: 14, album_id: 2)
Track.create(name: "Williamsburg", duration_ms: 212837, explicit: true, track_number: 15, album_id: 2)
Track.create(name: "I Cannot Fucking Wait Til Morrissey Dies", duration_ms: 86778, explicit: true, track_number: 16, album_id: 2)
Track.create(name: "Rainbow Six", duration_ms: 282625, explicit: true, track_number: 17, album_id: 2)
Track.create(name: "1488", duration_ms: 148410, explicit: true, track_number: 18, album_id: 2)
Track.create(name: "Curb Stomp", duration_ms: 135116, explicit: true, track_number: 19, album_id: 2)
Track.create(name: "imagine", duration_ms: 212266, explicit: true, track_number: 1, album_id: 3)
Track.create(name: "needy", duration_ms: 171573, explicit: true, track_number: 2, album_id: 3)
Track.create(name: "NASA", duration_ms: 182000, explicit: false, track_number: 3, album_id: 3)
Track.create(name: "bloodline", duration_ms: 216893, explicit: true, track_number: 4, album_id: 3)
Track.create(name: "fake smile", duration_ms: 208880, explicit: true, track_number: 5, album_id: 3)
Track.create(name: "bad idea", duration_ms: 267106, explicit: false, track_number: 6, album_id: 3)
Track.create(name: "make up", duration_ms: 140693, explicit: true, track_number: 7, album_id: 3)
Track.create(name: "ghostin", duration_ms: 271466, explicit: false, track_number: 8, album_id: 3)
Track.create(name: "in my head", duration_ms: 222946, explicit: true, track_number: 9, album_id: 3)
Track.create(name: "7 rings", duration_ms: 178626, explicit: true, track_number: 10, album_id: 3)
Track.create(name: "thank u, next", duration_ms: 207320, explicit: true, track_number: 11, album_id: 3)
Track.create(name: "break up with your girlfriend, i'm bored", duration_ms: 190440, explicit: true, track_number: 12, album_id: 3)
Track.create(name: "Dirty Computer (feat. Brian Wilson)", duration_ms: 119667, explicit: true, track_number: 1, album_id: 4)
Track.create(name: "Crazy, Classic, Life", duration_ms: 286626, explicit: true, track_number: 2, album_id: 4)
Track.create(name: "Take A Byte", duration_ms: 247253, explicit: true, track_number: 3, album_id: 4)
Track.create(name: "Jane's Dream", duration_ms: 18641, explicit: true, track_number: 4, album_id: 4)
Track.create(name: "Screwed (feat. Zoë Kravitz)", duration_ms: 302491, explicit: true, track_number: 5, album_id: 4)
Track.create(name: "Django Jane", duration_ms: 190288, explicit: true, track_number: 6, album_id: 4)
Track.create(name: "Pynk (feat. Grimes)", duration_ms: 240426, explicit: true, track_number: 7, album_id: 4)
Track.create(name: "Make Me Feel", duration_ms: 194230, explicit: true, track_number: 8, album_id: 4)
Track.create(name: "I Got The Juice (feat. Pharrell Williams)", duration_ms: 226287, explicit: true, track_number: 9, album_id: 4)
Track.create(name: "I Like That", duration_ms: 200338, explicit: true, track_number: 10, album_id: 4)
Track.create(name: "Don't Judge Me", duration_ms: 360475, explicit: true, track_number: 11, album_id: 4)
Track.create(name: "Stevie's Dream", duration_ms: 46636, explicit: true, track_number: 12, album_id: 4)
Track.create(name: "So Afraid", duration_ms: 243808, explicit: true, track_number: 13, album_id: 4)
Track.create(name: "Americans", duration_ms: 246357, explicit: true, track_number: 14, album_id: 4)
Track.create(name: "Fake Empire (Live in Brussels)", duration_ms: 201420, explicit: false, track_number: 1, album_id: 5)
Track.create(name: "Mistaken for Strangers (Live in Brussels)", duration_ms: 208278, explicit: false, track_number: 2, album_id: 5)
Track.create(name: "Brainy (Live in Brussels)", duration_ms: 229229, explicit: false, track_number: 3, album_id: 5)
Track.create(name: "Squalor Victoria (Live in Brussels)", duration_ms: 310598, explicit: false, track_number: 4, album_id: 5)
Track.create(name: "Green Gloves (Live in Brussels)", duration_ms: 235922, explicit: false, track_number: 5, album_id: 5)
Track.create(name: "Slow Show (Live in Brussels)", duration_ms: 288573, explicit: false, track_number: 6, album_id: 5)
Track.create(name: "Apartment Story (Live in Brussels)", duration_ms: 216959, explicit: false, track_number: 7, album_id: 5)
Track.create(name: "Start a War (Live in Brussels)", duration_ms: 221585, explicit: false, track_number: 8, album_id: 5)
Track.create(name: "Guest Room (Live in Brussels)", duration_ms: 227952, explicit: false, track_number: 9, album_id: 5)
Track.create(name: "Racing Like a Pro (Live in Brussels)", duration_ms: 249834, explicit: false, track_number: 10, album_id: 5)
Track.create(name: "Ada (Live in Brussels)", duration_ms: 275755, explicit: false, track_number: 11, album_id: 5)
Track.create(name: "Gospel (Live in Brussels)", duration_ms: 265976, explicit: false, track_number: 12, album_id: 5)
Track.create(name: "raindrops (an angel cried)", duration_ms: 37640, explicit: true, track_number: 1, album_id: 6)
Track.create(name: "blazed (feat. Pharrell Williams)", duration_ms: 196360, explicit: true, track_number: 2, album_id: 6)
Track.create(name: "the light is coming (feat. Nicki Minaj)", duration_ms: 228373, explicit: true, track_number: 3, album_id: 6)
Track.create(name: "R.E.M", duration_ms: 245666, explicit: true, track_number: 4, album_id: 6)
Track.create(name: "God is a woman", duration_ms: 197546, explicit: true, track_number: 5, album_id: 6)
Track.create(name: "sweetener", duration_ms: 208493, explicit: true, track_number: 6, album_id: 6)
Track.create(name: "successful", duration_ms: 227386, explicit: true, track_number: 7, album_id: 6)
Track.create(name: "everytime", duration_ms: 172106, explicit: true, track_number: 8, album_id: 6)
Track.create(name: "breathin", duration_ms: 198160, explicit: true, track_number: 9, album_id: 6)
Track.create(name: "no tears left to cry", duration_ms: 205920, explicit: false, track_number: 10, album_id: 6)
Track.create(name: "borderline (feat. Missy Elliott)", duration_ms: 177533, explicit: true, track_number: 11, album_id: 6)
Track.create(name: "better off", duration_ms: 171333, explicit: true, track_number: 12, album_id: 6)
Track.create(name: "goodnight n go", duration_ms: 189506, explicit: true, track_number: 13, album_id: 6)
Track.create(name: "pete davidson", duration_ms: 73813, explicit: true, track_number: 14, album_id: 6)
Track.create(name: "get well soon", duration_ms: 322026, explicit: true, track_number: 15, album_id: 6)
Track.create(name: "Outside", duration_ms: 111007, explicit: false, track_number: 1, album_id: 7)
Track.create(name: "Time Today", duration_ms: 131594, explicit: false, track_number: 2, album_id: 7)
Track.create(name: "Only Acting", duration_ms: 229854, explicit: false, track_number: 3, album_id: 7)
Track.create(name: "Flyway", duration_ms: 118706, explicit: false, track_number: 4, album_id: 7)
Track.create(name: "Dump", duration_ms: 181687, explicit: false, track_number: 5, album_id: 7)
Track.create(name: "Make Believe", duration_ms: 207707, explicit: false, track_number: 6, album_id: 7)
Track.create(name: "Dear Future Self", duration_ms: 166787, explicit: false, track_number: 7, album_id: 7)
Track.create(name: "Visiting Hours", duration_ms: 145491, explicit: false, track_number: 8, album_id: 7)
Track.create(name: "If I'd Known", duration_ms: 163884, explicit: false, track_number: 9, album_id: 7)
Track.create(name: "Sometimes", duration_ms: 121191, explicit: false, track_number: 10, album_id: 7)
Track.create(name: "Swimming", duration_ms: 199498, explicit: false, track_number: 11, album_id: 7)
Track.create(name: "Rest Stop", duration_ms: 202543, explicit: false, track_number: 12, album_id: 7)
Track.create(name: "!!!!!!!", duration_ms: 13578, explicit: false, track_number: 1, album_id: 8)
Track.create(name: "bad guy", duration_ms: 194087, explicit: false, track_number: 2, album_id: 8)
Track.create(name: "xanny", duration_ms: 243725, explicit: false, track_number: 3, album_id: 8)
Track.create(name: "you should see me in a crown", duration_ms: 180952, explicit: false, track_number: 4, album_id: 8)
Track.create(name: "all the good girls go to hell", duration_ms: 168839, explicit: false, track_number: 5, album_id: 8)
Track.create(name: "wish you were gay", duration_ms: 221543, explicit: false, track_number: 6, album_id: 8)
Track.create(name: "when the party's over", duration_ms: 196077, explicit: false, track_number: 7, album_id: 8)
Track.create(name: "8", duration_ms: 173201, explicit: false, track_number: 8, album_id: 8)
Track.create(name: "my strange addiction", duration_ms: 179889, explicit: false, track_number: 9, album_id: 8)
Track.create(name: "bury a friend", duration_ms: 193143, explicit: false, track_number: 10, album_id: 8)
Track.create(name: "ilomilo", duration_ms: 156370, explicit: false, track_number: 11, album_id: 8)
Track.create(name: "listen before i go", duration_ms: 242652, explicit: false, track_number: 12, album_id: 8)
Track.create(name: "i love you", duration_ms: 291796, explicit: false, track_number: 13, album_id: 8)
Track.create(name: "goodbye", duration_ms: 119409, explicit: false, track_number: 14, album_id: 8)
Track.create(name: "Ultralight Beam", duration_ms: 320680, explicit: true, track_number: 1, album_id: 9)
Track.create(name: "Father Stretch My Hands Pt. 1", duration_ms: 135920, explicit: true, track_number: 2, album_id: 9)
Track.create(name: "Pt. 2", duration_ms: 130293, explicit: true, track_number: 3, album_id: 9)
Track.create(name: "Famous", duration_ms: 196040, explicit: true, track_number: 4, album_id: 9)
Track.create(name: "Feedback", duration_ms: 147240, explicit: true, track_number: 5, album_id: 9)
Track.create(name: "Low Lights", duration_ms: 131773, explicit: true, track_number: 6, album_id: 9)
Track.create(name: "Highlights", duration_ms: 199866, explicit: true, track_number: 7, album_id: 9)
Track.create(name: "Freestyle 4", duration_ms: 123386, explicit: true, track_number: 8, album_id: 9)
Track.create(name: "I Love Kanye", duration_ms: 44826, explicit: true, track_number: 9, album_id: 9)
Track.create(name: "Waves", duration_ms: 181573, explicit: true, track_number: 10, album_id: 9)
Track.create(name: "FML", duration_ms: 236120, explicit: true, track_number: 11, album_id: 9)
Track.create(name: "Real Friends", duration_ms: 251573, explicit: true, track_number: 12, album_id: 9)
Track.create(name: "Wolves", duration_ms: 301586, explicit: true, track_number: 13, album_id: 9)
Track.create(name: "Frank's Track", duration_ms: 38333, explicit: true, track_number: 14, album_id: 9)
Track.create(name: "Siiiiiiiiilver Surffffeeeeer Intermission", duration_ms: 56560, explicit: true, track_number: 15, album_id: 9)
Track.create(name: "30 Hours", duration_ms: 323302, explicit: true, track_number: 16, album_id: 9)
Track.create(name: "No More Parties In LA", duration_ms: 374413, explicit: true, track_number: 17, album_id: 9)
Track.create(name: "Facts (Charlie Heat Version)", duration_ms: 200733, explicit: true, track_number: 18, album_id: 9)
Track.create(name: "Fade", duration_ms: 193747, explicit: true, track_number: 19, album_id: 9)
Track.create(name: "Saint Pablo", duration_ms: 372113, explicit: true, track_number: 20, album_id: 9)
Track.create(name: "All We Got (feat. Kanye West & Chicago Children's Choir)", duration_ms: 203794, explicit: false, track_number: 1, album_id: 10)
Track.create(name: "No Problem (feat. Lil Wayne & 2 Chainz)", duration_ms: 304606, explicit: true, track_number: 2, album_id: 10)
Track.create(name: "Summer Friends (feat. Jeremih & Francis & The Lights)", duration_ms: 290316, explicit: true, track_number: 3, album_id: 10)
Track.create(name: "D.R.A.M. Sings Special", duration_ms: 101590, explicit: false, track_number: 4, album_id: 10)
Track.create(name: "Blessings", duration_ms: 221939, explicit: false, track_number: 5, album_id: 10)
Track.create(name: "Same Drugs", duration_ms: 257775, explicit: false, track_number: 6, album_id: 10)
Track.create(name: "Mixtape (feat. Young Thug & Lil Yachty)", duration_ms: 292910, explicit: true, track_number: 7, album_id: 10)
Track.create(name: "Angels (feat. Saba)", duration_ms: 206240, explicit: true, track_number: 8, album_id: 10)
Track.create(name: "Juke Jam (feat. Justin Bieber & Towkio)", duration_ms: 219683, explicit: true, track_number: 9, album_id: 10)
Track.create(name: "All Night (feat. Knox Fortune)", duration_ms: 141542, explicit: true, track_number: 10, album_id: 10)
Track.create(name: "How Great (feat. Jay Electronica & My cousin Nicole)", duration_ms: 337423, explicit: false, track_number: 11, album_id: 10)
Track.create(name: "Smoke Break (feat. Future)", duration_ms: 226494, explicit: true, track_number: 12, album_id: 10)
Track.create(name: "Finish Line / Drown (feat. T-Pain, Kirk Franklin, Eryn Allen Kane & Noname)", duration_ms: 406983, explicit: true, track_number: 13, album_id: 10)
Track.create(name: "Blessings", duration_ms: 230016, explicit: true, track_number: 14, album_id: 10)
Track.create(name: "The End.", duration_ms: 112920, explicit: false, track_number: 1, album_id: 11)
Track.create(name: "Dead!", duration_ms: 195520, explicit: true, track_number: 2, album_id: 11)
Track.create(name: "This Is How I Disappear", duration_ms: 239053, explicit: false, track_number: 3, album_id: 11)
Track.create(name: "The Sharpest Lives", duration_ms: 200880, explicit: false, track_number: 4, album_id: 11)
Track.create(name: "Welcome to the Black Parade", duration_ms: 311106, explicit: false, track_number: 5, album_id: 11)
Track.create(name: "I Don't Love You", duration_ms: 238680, explicit: false, track_number: 6, album_id: 11)
Track.create(name: "House of Wolves", duration_ms: 184000, explicit: true, track_number: 7, album_id: 11)
Track.create(name: "Cancer", duration_ms: 142973, explicit: false, track_number: 8, album_id: 11)
Track.create(name: "Mama", duration_ms: 279026, explicit: true, track_number: 9, album_id: 11)
Track.create(name: "Sleep", duration_ms: 283466, explicit: false, track_number: 10, album_id: 11)
Track.create(name: "Teenagers", duration_ms: 161920, explicit: false, track_number: 11, album_id: 11)
Track.create(name: "Disenchanted", duration_ms: 295000, explicit: false, track_number: 12, album_id: 11)
Track.create(name: "Famous Last Words", duration_ms: 299226, explicit: false, track_number: 13, album_id: 11)
Track.create(name: "Blood - Hidden Track", duration_ms: 173533, explicit: true, track_number: 14, album_id: 11)
Track.create(name: "She Works Out Too Much", duration_ms: 278386, explicit: false, track_number: 1, album_id: 12)
Track.create(name: "Little Dark Age", duration_ms: 299960, explicit: false, track_number: 2, album_id: 12)
Track.create(name: "When You Die", duration_ms: 263880, explicit: true, track_number: 3, album_id: 12)
Track.create(name: "Me and Michael", duration_ms: 289853, explicit: false, track_number: 4, album_id: 12)
Track.create(name: "TSLAMP", duration_ms: 270013, explicit: false, track_number: 5, album_id: 12)
Track.create(name: "James", duration_ms: 232173, explicit: false, track_number: 6, album_id: 12)
Track.create(name: "Days That Got Away", duration_ms: 284546, explicit: false, track_number: 7, album_id: 12)
Track.create(name: "One Thing Left to Try", duration_ms: 260346, explicit: false, track_number: 8, album_id: 12)
Track.create(name: "When You're Small", duration_ms: 210880, explicit: false, track_number: 9, album_id: 12)
Track.create(name: "Hand It Over", duration_ms: 253360, explicit: true, track_number: 10, album_id: 12)
