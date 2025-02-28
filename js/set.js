$(document).ready(function(){
  $("#accountbtn").click(function(){
    $("#lgroup").toggle(500);
    $(".smenu").each(function(){
      $(this).click(function(){
        let id = $(this).attr("pid");
        if(id == "yourprofile")
        {
          //$("#lgroup").hide(1000);
          $("#profileshow").show(500)
          $("#changepasscollapse").hide(500)
          $("#pupdation").hide(500)
          $(".closebtn").click(function(){
            $("#profileshow").hide(500)
          })
        }
        else if(id == "passwordandsecurity")
        {
          $("#changepasscollapse").show(500)
          $("#profileshow").hide(500)
          $("#pupdation").hide(500)
          $(".closebtn").click(function(){
            $("#changepasscollapse").hide(500)
          })
        }
        else
        {
           $("#changepasscollapse").hide(500)
          $("#profileshow").hide(500)
          $("#pupdation").show(500)
          $(".btnclose").click(function(){
            $("#pupdation").hide(500)
          })
        }
      })
    })
  })
  $(".update_pass_frm").submit(function(e){
    e.preventDefault();
    $.ajax({
      type:"POST",
      url:"php/changepassword.php",
      data:new FormData(this),
      processData:false,
      contentType:false,
      cache:false,
      beforeSend:function()
      {
        $(".updatepassbtn").addClass("disabled");
        $(".updatepassbtn").html("Please Wait..");
      },
      success:function(response)
      {
        $(".updatepassbtn").removeClass("disabled");
        $(".updatepassbtn").html("Update Your Password");
        let obj = JSON.parse(response);
        if(obj.status==true)
        {
          $(".updatepassbtn").html(obj.msg);
          $(".updatepassbtn").removeClass("btn btn-warning");
          $(".updatepassbtn").addClass("btn btn-success");
          setTimeout(function(){
            $(".updatepassbtn").html("Update Your Password");
            $(".updatepassbtn").removeClass("btn btn-success");
            $(".updatepassbtn").addClass("btn btn-warning");
            $(".update_pass_frm").get(0).reset();
            $(".closebtn").click();
          },1000)
        }
        else
        {
          $(".updatepassbtn").html(obj.msg);
          $(".updatepassbtn").removeClass("btn btn-warning");
          $(".updatepassbtn").addClass("btn btn-danger");
          setTimeout(function(){
            $(".updatepassbtn").html("Update Your Password");
            $(".updatepassbtn").removeClass("btn btn-danger");
            $(".updatepassbtn").addClass("btn btn-warning");
          },1000)
        }
      }
    })
  })
  $("#updateyouraccount").click(function(){
    $.ajax({
      type:"POST",
      url:"php/getuserdata.php",
      success:function(response)
      {
        $("#email").mouseover(function(){alert("Email Not Update")});
         var userdata = JSON.parse(response);
         $("#fname").val(userdata.msg.fullname);
         $("#email").val(userdata.msg.email);
         $("#uname").val(userdata.msg.username);
         $("#phone").val(userdata.msg.phone);
      }
    })
  })
  $(".updatedata").submit(function(e){
    e.preventDefault();
    $.ajax({
      type:"POST",
      url:"php/updateinfo.php",
      data:new FormData(this),
      processData:false,
      contentType:false,
      cache:false,
      beforeSend:function()
      {

      },
      success:function(response)
      {
        console.log(response);
      }
    })
  })
})