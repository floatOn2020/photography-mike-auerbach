const cardsHover = () => {
  const cards = document.querySelectorAll(".hoverable-card");
  if(cards){
    cards.forEach((card) => {
      card.addEventListener('mouseover', () => {
        let backgroundImageArray = card.style.backgroundImage.split('');
        //change opacities
        backgroundImageArray[32] = '8';
        backgroundImageArray[52] = '8';
        card.style.background = backgroundImageArray.join('');
        card.style.backgroundSize = 'cover';
      });
      card.addEventListener('mouseout', () => {
        let backgroundImageArray = card.style.backgroundImage.split('');
        //change opacities back
        backgroundImageArray[32] = '2';
        backgroundImageArray[52] = '3';
        card.style.background = backgroundImageArray.join('');
        card.style.backgroundSize = 'cover';
      })
    });
  }
};

export { cardsHover };
