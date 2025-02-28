<?php
require("../php/db.php");
$unique_id = $_COOKIE['_aut_ui_'];
//$user_unique_id = $_COOKIE['frd_request192053896'];
$sql = $db->query("SELECT * FROM users WHERE unique_id = '{$unique_id}'");
  $userd = $sql->fetch_assoc();
  $sql2 = $db->query("SELECT receiverequestid,requestmsg,sendrequestid FROM requestfrd WHERE sendrequestid='{$unique_id}' AND requestmsg='accept'");
  //$sql3 = $db->query("SELECT receiverequestid,requestmsg,sendrequestid FROM requestfrd WHERE receiverequestid='{$useruniqeuid}' AND requestmsg='accept'");
  $post = $db->query("SELECT * FROM post WHERE post_unique_id = '{$unique_id}'");
?>
 <div class="row p-0 m-0">
    <iv class="col-md-3 p-0 m-0"></iv>
    <div class="col-md-6 p-0 m-0 dataload">
    <div id="profilescol" class="text-light mt-5">
    <div class="d-flex align-items-center justify-content-end p-2">
       <button class="btn btn-dark" id="editprofilebtn"><i class="fa fa-edit" aria-hidden="true"></i></button><button class="btn btn-dark ms-2" id="settingbtn"><i class="fa fa-cog" aria-hidden="true"></i></button>
     </div>
     <center><div class="picbox d-flex">
       <img src="<?php echo $userd['profilepic'] ?>" alt="" id="img">
     </div></center>
     <center><H1 class="mt-1 mb-1 fs-3"><?php echo $userd['username']; ?></H1></center>
     <center>
       <div class="mt-3 d-flex justify-content-center align-items-center">
         <p class="me-3">Post</p>
         <p class="ms-4">Follower</p>
         <p class="ms-4">Following</p>
       </div>
       </center>
       <center>
       <div class="upff">
         <p class="post"><?php print_r(mysqli_num_rows($post));?></p>
         <p class="follower"></p>
         <p class="following"><?php print_r(mysqli_num_rows($sql2));?></p>
       </div>
     </center>
   </div>
   <div class="row p-0 m-0">
        <?php
            
            if($post->num_rows != 0)
            {
              while($postdata = $post->fetch_assoc())
              {
                echo '
                
                  <div class="col-md-4 p-0 m-0">
                  <div class="postdate"><h6 class="text-center text-info"><b class="text-danger">Post Date=></b>'.$postdata['post_date'].'</h6></div>
                    <div class="postbox border">
                      <div class="postpic">
                      <img src="users/'.$postdata['post_unique_id'].'/'.$postdata['post_pic'].'" alt="" class="w-100 postimg">
                      </div>
                    </div>
                    <div class="posttools mt-2">
                    <i class="fa fa-thumbs-up mylikeicon text-light" id="likebtn_">'.$postdata['post_like'].'</i>
                     <i class="fa fa-thumbs-down myunlikeicon text-light" id="dislikebtn_">'.$postdata['post_unlike'].'</i>
                    </div><hr>
                    <div class="d-flex">
                    <button class="btn btn-warning updatebtn " pid='.$postdata['post_id'].'><i class="fa fa-pencil-square-o"></i></button>
                     <button class="btn btn-danger deletebtn" pid='.$postdata['post_id'].'><i class="fa fa-trash"></i></button>
                    </div>
                    </div>
                
                ';
              }
            }
            else
            {
              echo  "No Post Awaillable";
            }

          ?>
        
      </div>
    </div>
    <div class="col-md-3 p-0 m-0"></div>

 </div>  
<script src="js/setting.js"></script>
</body>
</html>