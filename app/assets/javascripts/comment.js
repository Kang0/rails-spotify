$(function () {
    console.log('comment.js is loaded ...')
    showComment()
});

function showComment() {
    $('form').submit(function(event) {
        event.preventDefault()
        let comment_values = $(this).serialize()
        var review_url = "/reviews/" + $(this).data("id") + "/comments"
        let comment_post = $.post(review_url, comment_values)
        debugger;

        comment_post.done(function(data) {
            console.log(data)
        })
    })
}