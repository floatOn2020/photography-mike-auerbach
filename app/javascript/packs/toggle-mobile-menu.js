const toggleMenu = () => {
  const hamburger = document.querySelector(".nav-toggle");
  const headerNav = document.querySelector('.my-header__nav')
  const menu = document.querySelector(".my-nav__list");
  const contentDiv = document.querySelector('.content');
  const page = document.querySelector('#page-container');
  // defaults
  menu.style.transform = "translateX(-100%)";
  headerNav.style.background = 'transparent';
  contentDiv.style.marginTop = '105px';

  if (menu) {
    const showMenu = () => {
        if (menu.dataset.show === "true") {
          menu.style.transform= "translateX(0%)";
          headerNav.style.background = '$white';
          page.style.position = 'fixed';
        } else {
          menu.style.transform = "translateX(-100%)";
          headerNav.style.background = 'transparent';
          contentDiv.style.marginTop = '105px';
          page.style.position = 'relative';
        }
    }


    if (hamburger) {
      hamburger.addEventListener('click', (event) => {
        event.preventDefault();
        showMenu();
        menu.dataset.show = menu.dataset.show == 'true' ? 'false' : 'true';
      });
    }
  }
}


// add listener to disable scroll

// Remove listener to re-enable scroll
export { toggleMenu };
