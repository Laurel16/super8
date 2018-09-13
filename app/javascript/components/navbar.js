function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon-right');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('hidden');
      } else {
        navbar.classList.remove('hidden');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
