import { Controller } from "stimulus";
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder";

export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["adresse"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,locality,neighborhood,address"

    });
    this.geocoder.addTo(this.element)
    console.log(this.adresseTarget)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
  }
  #setInputValue(event) {
    this.adresseTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.adresseTarget.value = ""
  }

}
