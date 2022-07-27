import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-quadrado',
  templateUrl: './quadrado.component.html',
  styleUrls: ['./quadrado.component.css']
})
export class QuadradoComponent implements OnInit {
  @Input () nameParam :string = '';
  @Input () bioParam :string = '';
  @Input () link1Param :string = '';
  @Input () link2Param :string = '';
  @Input () subtitleParam :string = '';
  constructor() { }

  ngOnInit(): void {
  }

}
