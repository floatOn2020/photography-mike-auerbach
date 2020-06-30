const toggleMenu = () => {
  const hamburger = document.querySelector(".nav-toggle");
  const headerNav = document.querySelector('.my-header__nav')
  const menu = document.querySelector(".my-nav__list");
  const contentDiv = document.querySelector('.content');
  const page = document.querySelector('#page-container');
  const cont = document.querySelector('.cont');
  // defaults
  if ((window.matchMedia("(max-width: 598px)")).matches && menu) {
    menu.style.transform = "translateX(-300%)";
    contentDiv.style.marginTop = '105px';
    headerNav.style.height = 'fit-content';
  } else {
    menu.style.transform = "translateX(0)";
    headerNav.style.background = '$white';
    headerNav.style.height = '100%';
    contentDiv.style.marginTop = '2px';
  }
  const showMenu = () => {
    if (menu.dataset.show === "true") {
      headerNav.style.height = '100%';
      menu.style.transform= "translateX(0%)";
      headerNav.style.background = '$white';
      console.log(headerNav.style.height);
      page.style.position = 'fixed';
    } else {
      menu.style.transform = "translateX(-100%)";
      headerNav.style.height = 'fit-content';
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


export { toggleMenu };
