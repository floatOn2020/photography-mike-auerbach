const toggleMenu = () => {
  const hamburger = document.querySelector(".nav-toggle");

  hamburger.addEventListener('click', () => {
    let menu = document.querySelector(".my-nav__list");
    console.log('sth')
    menu.style.display = 'none'
  })

};

export { toggleMenu };
