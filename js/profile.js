const nextbtn = document.querySelector("#nextbtn"),
img = document.querySelector("#img"),
usericon = document.querySelector("#usericon").addEventListener("click",profile);
function profile()
{
  var file = document.createElement("INPUT");
  file.setAttribute("type","file");
  file.click()
  file.onchange=function()
  {
    var reader = new FileReader();
    reader.readAsDataURL(this.files[0])
    reader.onload=function()
    {
      var url = reader.result;
      img.src=url;
      img.style.backgroundPosition="center";
      img.style.backgroundSize="cover";
      nextbtn.onclick=function()
      {
        try{
          alert("ok");
        }
        catch(err)
        {
          alert(err.message)
        }
        
      }
     }
  }
}
