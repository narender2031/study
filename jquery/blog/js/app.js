// $('#flashMessage').hide().slideDown(1000).delay(3000).slideUp();
// const  title = "My first Blog post";
// const comment ="This is my <strong>first</strong> post";
// $('#blogTitlePreview').text(title);
// $('#blogContentPreview').html(comment);

$('#flashMessage').hide();
$('#previewButton').click(function(){
    const title = $('#blogTitleInput').val();
    const content = $('#blogContentInput').val();
    $('#blogTitlePreview').text(title);
    $('#blogContentPreview').html(content);
    $('#flashMessage').slideDown(1000).delay(3000).slideUp();
    // console.log(content)
})