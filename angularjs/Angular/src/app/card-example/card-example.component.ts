import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-card-example',
  templateUrl: './card-example.component.html',
  styleUrls: ['./card-example.component.css']
})
export class CardExampleComponent implements OnInit {
  fullName: string = 'gador'
  biologia: string = 'estudo da vida'

  students: string[] = [
    'Michael Scott',
    'babaduab',
    'abubaba',
    'amue'
  ]

  constructor() { }

  ngOnInit(): void {
  }

}
