import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="icon"
export default class extends Controller {
  static targets = ["link"];

  navClick() {
    const darkColor = getComputedStyle(document.documentElement).getPropertyValue('--bs-dark');
    const secondaryColor = getComputedStyle(document.documentElement).getPropertyValue('--bs-secondary');
    const mainNavItems = document.querySelectorAll("#main_nav_turbo_frame");
    mainNavItems.forEach((item) =>
      item.style.backgroundColor = darkColor
    ) 
    this.element.style.backgroundColor = secondaryColor;
  }

  pageClick() {
    const pageNavItems = document.querySelectorAll(".nav-item__page--active");
    pageNavItems.forEach((item) => {
      item.classList.remove('nav-item__page--active');
      item.classList.add('nav-item__page--inactive');
      item.firstElementChild.firstElementChild.classList.remove('text-light');
      item.firstElementChild.firstElementChild.classList.add('text-secondary');
    })
    this.element.classList.remove('nav-item__page--inactive');
    this.element.classList.add('nav-item__page--active');
  }

  pageMouseEnter() {
    this.linkTarget.classList.remove('text-secondary');
    this.linkTarget.classList.add('text-light');
  }
  
  pageMouseLeave() {
    if (!this.element.classList.contains('nav-item__page--active')) {
      this.linkTarget.classList.remove('text-light');
      this.linkTarget.classList.add('text-secondary');
    }
  }
}
