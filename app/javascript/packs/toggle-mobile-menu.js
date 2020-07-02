const toggleMenu = () => {
  const hamburger = document.querySelector(".nav-toggle");
  const Nav = document.querySelector('.my-nav')
  const menu = document.querySelector(".my-nav__list");
  const contentDiv = document.querySelector('.content');
  const page = document.querySelector('#page-container');
  const shouldRun = (window.matchMedia("(max-width: 598px)")).matches && menu

  if (shouldRun) {
    menu.style.height = '100vh';
    contentDiv.style.marginTop = '105px';
    Nav.style.height = '99px';
  } else {
    menu.style.transform = "translateX(0)";
    Nav.style.background = '$white';
    contentDiv.style.marginTop = '2px';
  }
  const showMenu = () => {
    if (menu.dataset.show === "true") {
      menu.style.transition = 'all 1s cubic - bezier(.5, 0, .5, 1)';
      menu.style.transform = "translateX(0%)";
      Nav.style.background = '$white';
      page.style.position = 'fixed';
      } else {
        contentDiv.style.width = "100vw"
        menu.style.transform = "translateX(100%)";
        Nav.style.transition= 'transform 1s';
        Nav.style.height = '99px';
        page.style.position = 'relative';
      }
    }

    if (hamburger) {
      hamburger.addEventListener('click', (event) => {
        event.preventDefault();
        menu.dataset.show = menu.dataset.show == 'true' ? 'false' : 'true';
        showMenu();
      });
    }
  }


export { toggleMenu };
