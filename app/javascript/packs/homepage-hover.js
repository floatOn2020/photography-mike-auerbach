const hoverHome = () => {
  const logoText = document.getElementById("mikeauerbachhome");
  console.log(logoText)
  const background = document.getElementById("backgr");
  if(logoText){
    logoText.addEventListener('mouseover', () => {
      console.log('mouseover')
      logoText.style.fontSize = "5.2rem";
      background.style.backgroundColor = "linear-gradient(rgba(0,0,0,0.4),rgba(250,250,0,0.4)), url(<%= asset_path('home-background.jpg') %>)";
    });

    logoText.addEventListener('mouseout', () => {
      console.log('mouseout')
      logoText.style.fontSize = "5rem";
      background.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)), url(<%= asset_path('home-background.jpg') %>)`;
    });
  }

};
export { hoverHome };
