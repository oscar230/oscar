import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { ItComponent } from './it/it.component';
import { DjComponent } from './dj/dj.component';
import { KeyComponent } from './key/key.component';
import { ContactComponent } from './contact/contact.component';


const routes: Routes = [
  { path: '', component: HomeComponent},
  { path: 'it', component: ItComponent},
  { path: 'dj', component: DjComponent},
  { path: 'contact', component: ContactComponent},
  { path: 'key', component: KeyComponent},
  { path: '**', redirectTo: ''} // Default
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
