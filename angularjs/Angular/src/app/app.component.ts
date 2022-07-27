import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  fullName: string = 'Renato';
  biography: string = '';
  linkYt: string = 'https://www.youtube.com';
  linkNh: string = 'https://www.facebook.com';
  subtitle: string = 'Subtitle';
}
