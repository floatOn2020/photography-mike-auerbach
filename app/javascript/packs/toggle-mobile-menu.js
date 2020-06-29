const toggleMenu = () => {
  const hamburger = document.querySelector(".nav-toggle");
  const headerNav = document.querySelector('.my-header__nav')
  const menu = document.querySelector(".my-nav__list");
  const contentDiv = document.querySelector('.content');
console.log(menu)
  const showMenu = () => {
      if (menu.dataset.show === "true") {

        menu.style.transform= "translateX(0%)";
        headerNav.style.background = '$white';
      } else {
        menu.style.transform = "translateX(-100%)";
        headerNav.style.background = 'transparent';
        contentDiv.style.marginTop = '105px';
      }
  }


  if (hamburger) {
    hamburger.addEventListener('click', (event) => {
      event.preventDefault();
      console.log('clicked', 'menu.dataset.show = ', menu.dataset.show )
      showMenu();
      menu.dataset.show = menu.dataset.show == 'true' ? 'false' : 'true';
      console.log('clicked again', 'menu.dataset.show = ', menu.dataset.show)
    });
  }
}
export { toggleMenu };
