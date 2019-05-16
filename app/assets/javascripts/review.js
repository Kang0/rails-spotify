$( document ).ready(function () {
    console.log('album.js is loaded ...')
    showIndex()    
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

function showIndex() {
    $.ajax({
        url: "http://localhost:3000/albums/6/reviews.json",
        dataType: 'json',
        success: function(resp) {
            console.log(resp)
            
        },
        error: function(req, status, err){
            console.log('something went wrong', status, err)
        }
    })
}