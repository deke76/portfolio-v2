import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="social-content"
export default class extends Controller {
  overflowSize() {
    const pageContent = document.getElementById("page-content");
    const socialContentContainer = this.element;
    const socialContentContainerTop = socialContentContainer.getBoundingClientRect().top;
    const socialContentContainerBottom = pageContent.getBoundingClientRect().bottom;
    const socialContentContainerHeight = socialContentContainerBottom - socialContentContainerTop;
    socialContentContainer.style.height = `calc(${socialContentContainerHeight}px - 1.25rem)`;
  }

  connect() {
    this.overflowSize();
  }

}
