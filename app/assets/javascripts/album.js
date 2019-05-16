$( document ).ready(function () {
    console.log('album.js is loaded ...')
    showFullReview()
});

function showFullReview() {
    $("button#fullReview").on("click", function (e) {
        let dataset = e.currentTarget.dataset
        fetch(`http://localhost:3000/albums/${dataset["album"]}/reviews/${dataset["review"]}.json`)
        .then(resp => resp.json())
        .then(json => {
            $("#content-" + json['id']).text(json['content'])
        })
    })
}