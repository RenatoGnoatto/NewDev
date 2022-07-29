import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { CourseComponent } from './pages/course/course.component';
import { HeaderComponent } from './components/header/header.component';
import { SidebarComponent } from './components/sidebar/sidebar.component';
import { LessonComponent } from './components/lesson/lesson.component';
import { RoomComponent } from './components/room/room.component';
import { LogoComponent } from './components/logo/logo.component';
import { VimeModule } from '@vime/angular';

@NgModule({
  declarations: [
    AppComponent,
    CourseComponent,
    HeaderComponent,
    SidebarComponent,
    LessonComponent,
    RoomComponent,
    LogoComponent
  ],
  imports: [
    BrowserModule,
    VimeModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
