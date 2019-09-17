$(function () {
    console.log('album.js is loaded ...')   
    showNewReview()
    showFullReview()
});

function showFullReview() {
    $("button#fullReview").on("click", function (e) {
        e.preventDefault()
        let dataset = e.currentTarget.dataset
        fetch(`http://localhost:3000/albums/${dataset["album"]}/reviews/${dataset["review"]}.json`)
        .then(resp => {
            if (resp.status === 401) {
                console.log('401 error')
                const err = new Error('bad data')
                throw err
            }
            return resp.json()})
        .then(json => {

            $("#content-" + json['id']).removeClass("text-truncate").text(json['content'])
        }).catch(e => console.log(e))
    })
}

function showNewReview() {
    $('form#newReview').submit(function(event) {
        event.preventDefault()
        let review_values = $(this).serialize()

        let review_url = event.target.action + ".json"
        let review_post = $.post(review_url, review_values).fail(function(response) {
            debugger;
            alert('Error: ' + response.responseText);
        })

        review_post.done(function(data) {
            console.log(data)
            let new_review = new Review(data)
            let new_review_html = new_review.postHTML()
            document.getElementById("postedReview").innerHTML += new_review_html
            $('form')[0].reset()
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
           <button class="btn" id="fullReview" data-album=${review['album']['id']} data-review=${review['id']}>Show Full Review</button>
           <a href="/albums/${review['album']['id']}/reviews/${review['id']}" class="btn btn-sm btn-outline-secondary">Go to Review</a>
         </div>
    </div><br>
    `
    //<%= album_review_path(review.album, review) %> is this the correct substitue for the link in js for "Go To Review"
}

class Review {
    constructor(obj) {
        this.id = obj.id
        this.content = obj.content
        this.rating = obj.rating
        this.recommend = obj.recommend
        this.title = obj.title
    }
}

Review.prototype.postHTML = function() {
    return (`
        <h4>Review was successfully posted</h4>
        <h4>Title: ${this.title}</h4>
        <p>Content: ${this.content}</p>
        <p>Rating: ${this.rating}</p>
        <p>Recommended? ${this.recommend}</p>
    `)
}

