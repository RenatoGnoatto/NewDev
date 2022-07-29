import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-lesson',
  templateUrl: './lesson.component.html',
  styleUrls: ['./lesson.component.css']
})

export class LessonComponent implements OnInit {

  clickOnChek: any;
  state: string = 'notViwed'

  constructor() { }

  ngOnInit(): void {
    this.clickOnChek = () => {
      if(this.state == 'viwed') {
        this.state = 'notViwed'
      } else {
        this.state = 'viwed'
      }
    }
  }
}
