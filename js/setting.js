$(document).ready(function(){
    $("#settingbtn").click(function(){
        $.ajax({
            type:"POST",
            url:"setting.php",
            success:function(response)
            {
                $(".dataload").html(response);
            }
        })
    })
    //del and update btn coding
    $(".iconbtn").each(function(){
        $(this).click(function(){
            let pid = $(this).attr("pid");
            let type = $(this).attr("type");
            $.ajax({
                type:"POST",
                url:"php/myprofileupdatetype-del-update.php",
                data:{
                    id:pid,
                    type:type
                },
                beforeSend:function()
                {

                },
                success:function(response)
                {
                    let obj = JSON.parse(response);
                    if(obj.status == 200)
                    {
                        $(".delmsg").addClass("alert alert-success");
                        $(".delmsg").html("Post Delete Successfully");
                        setTimeout(() => {
                            $(".delmsg").removeClass("alert alert-success");
                            $(".delmsg").html("");
                            $("#mclose").click();
                            $("#mprofile").click();
                        }, 2000);
                    }
                    else
                    {

                    }
                }
            })
        })
    })
})