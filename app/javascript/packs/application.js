import "bootstrap";
/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import 'google_id.js'
import 'bootstrap'

import { home1Navigation } from '../home.js';
import { home2Navigation } from '../home.js';
import { form1Navigation } from '../form1.js';
import { form2Navigation } from '../form2.js';
import { tabNavigation } from '../profile.js';
import { bindSweetAlertButtonDemo } from '../components/banner';
import { bindSweetAlertDeleteProgram } from '../components/banner';


home1Navigation();
home2Navigation();
form1Navigation();
tabNavigation();
form2Navigation();
bindSweetAlertButtonDemo();
bindSweetAlertDeleteProgram();

