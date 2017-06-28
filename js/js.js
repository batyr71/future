$("#comment-list").load("load.php");

$("#form").submit( function(event)
{   
    event.preventDefault();
    var formData = new FormData($(this)[0]);
    var name = $("#name").val();
    var msg = $("msg").val();
    if(   !(name == "") && !(msg == "")  )
    {
        $.ajax({
                url: "comments.php", 
                type: "POST",
                data: formData, 
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function()
                {
                    $("#comment-list").load("load.php");

                }
        });
        return false;
    }
    else
    {
        $(".req").html("Обязательное поле");
    }
});











//
//$.get("comments.php", function(data){
//    $("#comment-list").html(data);
//});
