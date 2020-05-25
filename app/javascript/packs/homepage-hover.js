const hoverHome = () => {
  const logoText = document.getElementById("mikeauerbachhome");
  const background = document.getElementById("backgr");
  // const hiddenSearchbox = document.getElementById("hidden-search");
  logoText.addEventListener('mouseover', () => {
    console.log("mousein works")
    logoText.style.fontSize = "5.2rem";
    // logoText.style.transform = "rotate(1deg)";
    background.style.backgroundColor = "linear-gradient(rgba(0,0,0,0.4),rgba(250,250,0,0.4)), url(<%= asset_path('home-background.jpg') %>)";
  });
  logoText.addEventListener('mouseout', () => {
    console.log("mouseout works")
    logoText.style.fontSize = "5rem";
    // logoText.style.transform = "rotate(0deg)"
    background.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)), url(<%= asset_path('home-background.jpg') %>)`;
  });
};

export { hoverHome };
