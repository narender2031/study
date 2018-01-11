const $odd = $('a:odd');
const $secureLinks = $('a[href^="https://"]');
const $pdf = $('a[href$=".pdf"]');
$secureLinks.attr("target","_blank");
$pdf.attr("download", true)
$secureLinks.addClass('secure');
$pdf.addClass('pdf');
const $checkLable = $("<label><input type='checkbox'> Allow PDF downloads</label>");
$('#links ul').append($checkLable);
$pdf.on('click',function(event){
    // event.preventDefault();
    const $checked = $(':checked');
    if($(':checked').length === 0){
        event.preventDefault();
        alert("Please allow the pdf download");
    }
});

$('a').each(function(){
    const url = $(this).attr('href');
    $(this).parent().append(`(${url})`);
    // console.log(index, $(element).attr('href'));
})