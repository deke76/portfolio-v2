import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="icon"
export default class extends Controller {
  navClick() {
    const darkColor = getComputedStyle(document.documentElement).getPropertyValue('--bs-dark');
    const secondaryColor = getComputedStyle(document.documentElement).getPropertyValue('--bs-secondary');
    const mainNavItems = document.querySelectorAll("#main_nav_turbo_frame");
    console.log('icon_controller.js:9, mainNavItems =>', mainNavItems);
    mainNavItems.forEach((item) =>
      item.style.backgroundColor = darkColor
    ) 
    this.element.style.backgroundColor = secondaryColor;
  }

  pageClick() {
    console.log("you clicked a menu item");
  }
}
