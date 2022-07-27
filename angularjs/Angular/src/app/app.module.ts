import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { CardExampleComponent } from './card-example/card-example.component';
import { QuadradoComponent } from './quadrado/quadrado.component';
import { RetanguloComponent } from './retangulo/retangulo.component';
import { FooterComponent } from './footer/footer.component';
import { LogoComponent } from './logo/logo.component';


@NgModule({
  declarations: [
    AppComponent,
    CardExampleComponent,
    QuadradoComponent,
    RetanguloComponent,
    FooterComponent,
    LogoComponent,
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {
  fullName: string = '';

}
