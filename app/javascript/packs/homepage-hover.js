const hoverHome = () => {
  const logoText = document.getElementById("mikeauerbachhome");
  const background = document.getElementById("backgr");
  if(logoText){
    logoText.addEventListener('mouseover', () => {
      logoText.style.fontSize = "5.2rem";
      background.style.backgroundColor = "linear-gradient(rgba(0,0,0,0.4),rgba(250,250,0,0.4)), url(<%= asset_path('home-background.jpg') %>)";
    });

    logoText.addEventListener('mouseout', () => {
      logoText.style.fontSize = "5rem";
      background.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)), url(<%= asset_path('home-background.jpg') %>)`;
    });
  }

};
