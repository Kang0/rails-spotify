$(function () {
    console.log('comment.js is loaded ...')
    showNewComment()
    showAllComments()
});

function showNewComment() {
    $('form').submit(function(event) {
        event.preventDefault()
        let comment_values = $(this).serialize()
        let comment_post = $.post('/comments', comment_values)

        comment_post.done(function(data) {
            $("#commentUser").text(data["user"]["name"])
            $("#commentContent").text(data["content"])
            console.log(data)
            $('form')[0].reset()
        })
    })
}

function showAllComments() {
    $('#commentButton').on('click', function(e) {
        $.get(e.target.baseURI + ".json", function(data) {
            debugger;
        })
    })
}

class Comment {
    constructor(obj) {
        this.id = obj.id
        this.content = obj.content
        this.review_id = obj.review_id
        this.user_id = obj.user_id
    }
}