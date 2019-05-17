$(document).ready(function () {
    console.log('comment.js is loaded ...')
    listenForClick()
    showNewComment()
});

function listenForClick() {
    $("#commentButton").one("click", function(event) {
        event.preventDefault()
        showAllComments(event)
    })
}

function showAllComments(e) {
    $.get(e.target.baseURI + ".json", function(data) {
        data.comments.forEach(function(comment){
            let reviewComment = new Comment(comment)
            let reviewCommentHTML = reviewComment.postHTML()
            
            document.getElementById("showComments").innerHTML += reviewCommentHTML
        })
    })
}

function showNewComment() {
    $('form#newComment').submit(function(event) {
        event.preventDefault()
        let comment_values = $(this).serialize()
        let comment_post = $.post('/comments', comment_values)

        comment_post.done(function(data) {
            debugger;
            let newComment = new Comment(data)
            let newCommentHTML = newComment.postHTML()
            document.getElementById("commentResults").innerHTML += newCommentHTML
            console.log(data)
            $('form')[0].reset()
        })
    })
}


class Comment {
    constructor(obj) {
        this.id = obj.id
        this.content = obj.content
        this.review_id = obj.review_id
        this.user_id = obj.user_id
        this.user = obj.user
    }
}

Comment.prototype.postHTML = function () {
    return (`
        <div>
            <h4 id="commentUser">${this.user.name}</h4>
            <p id="commentContent">${this.content}</p>
        </div>
    `)
}