$(function () {
    console.log('comment.js is loaded ...')
    showComment()
});

function showComment() {
    $('form').submit(function(event) {
        event.preventDefault()
        let comment_values = $(this).serialize()
        let comment_post = $.post('/comments', comment_values)

        comment_post.done(function(data) {
            $("#commentContent").text(data["content"])
            console.log(data)
            $('form')[0].reset()
        })
    })
}