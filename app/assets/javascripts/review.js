$( document ).ready(function () {
    console.log('album.js is loaded ...')   
    showFullReview()
});

function showFullReview() {
    $("button#fullReview").on("click", function (e) {
        e.preventDefault()
        debugger;
        let dataset = e.currentTarget.dataset
        fetch(`http://localhost:3000/albums/${dataset["album"]}/reviews/${dataset["review"]}.json`)
        .then(resp => resp.json())
        .then(json => {
            $("#content-" + json['id']).removeClass("text-truncate").text(json['content'])
        })
    })
}

function reviewJS(review) {
    $(".userReviews").html(reviewHTML(review))
}

function reviewHTML(review) {
    return `
    <div class="card">
         <div class="card-header"><strong>${review['title']}</strong></div>
         <div class="card-body">
           <h5 class="card-title">${review['user']['name']} - ${review['rating']}/10</h5>
           <p class="card-text text-truncate" id="content-${review['id']}">${review['content']}</p>
           <button class="btn btn-sm btn-outline-secondary" id="fullReview" data-album=${review['album']['id']} data-review=${review['id']}>Show Full Review</button>
           <a href="/albums/${review['album']['id']}/reviews/${review['id']}" class="btn btn-sm btn-outline-secondary">Go to Review</a>
         </div>
    </div><br>
    `
    //<%= album_review_path(review.album, review) %> is this the correct substitue for the link in js for "Go To Review"
}

