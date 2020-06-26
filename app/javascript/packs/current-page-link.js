const currentPageLink = () => {
  const links = document.querySelectorAll(".my-nav__item");
  if (links) {
    links.forEach((link) => {
      link.addEventListener('click', (e) => {
        // e.preventDefault()
        console.log(e)
        link.classList.add("my-nav__item--current")
      });

    });
  }
};

export { currentPageLink };
