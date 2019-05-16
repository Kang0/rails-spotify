function albumJS(album) {
    $(".albumJS").html(albumHTML(album))
}

function albumHTML(album) {
    return `
    <div class="col-sm-4">
        <img src="${album['images']}" height="300"><br><br>
    </div>
    <div class="col-sm-8">
        <ul class="list-group">
            <li class="list-group-item"><strong>Album:</strong> ${album['name']}</li>
            <li class="list-group-item"><strong>Release Date:</strong> ${album['release_date']}</li>
            <li class="list-group-item"><strong>Label:</strong> ${album['label']}</li>
            <li class="list-group-item"><strong>Number of Tracks:</strong> ${album['number_of_tracks']}</li>
            <li class="list-group-item"><strong>Listen to Album:</strong> <a href="${album['external_urls']}">Spotify</a></li>
            <li class="list-group-item"><strong>Copyrights:</strong> ${album['copyrights']}</li>
        </ul>
    </div>
`    
}

