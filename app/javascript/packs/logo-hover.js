const hoverLogo = () => {
  const name = document.getElementsByClassName("header-name");
  if(name){
    name[0].addEventListener('mouseover', () => {
      console.log("hovering first element")
      name[0].style.opacity = "1";;
      name[1].style.opacity = "1";
    });
    name[0].addEventListener('mouseout', () => {
      console.log("hovering 2. element")
      name[0].style.opacity = ".8";;
      name[1].style.opacity = ".8";
    });
    name[1].addEventListener('mouseover', () => {
       console.log("mouseout first element")
      name[0].style.opacity = "1";;
      name[1].style.opacity = "1";
    });
    name[1].addEventListener('mouseout', () => {
      name[0].style.opacity = ".8";;
      name[1].style.opacity = ".8";
    });
  }

};

export { hoverLogo };
