$(function () {
    console.log('artist.js is loaded ...')
    toggleTracks()
});

function toggleTracks() {
    $('button#toggleTrack').on('click', function(e) {
        let id = $(this).data("id")
        let idSelect = "ul#" + id
        $(idSelect).toggle();
    })
}