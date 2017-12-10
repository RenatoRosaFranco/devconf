[1mdiff --git a/app/assets/javascripts/application.js b/app/assets/javascripts/application.js[m
[1mindex 887d694..2d7b9a7 100644[m
[1m--- a/app/assets/javascripts/application.js[m
[1m+++ b/app/assets/javascripts/application.js[m
[36m@@ -19,3 +19,8 @@[m
 //= require angular-animate[m
 //= require angular-resource[m
 //= require_tree .[m
[32m+[m
[32m+[m[32mvar app = angular.module('app', []);[m
[32m+[m[32mapp.controller('ApplicationController', function(){[m
[32m+[m
[32m+[m[32m});[m
[1mdiff --git a/app/views/home/index.html.erb b/app/views/home/index.html.erb[m
[1mindex 738c2fc..ba6be07 100644[m
[1m--- a/app/views/home/index.html.erb[m
[1m+++ b/app/views/home/index.html.erb[m
[36m@@ -107,8 +107,18 @@[m
             <li><hr></li>[m
           </ul>[m
 [m
[31m-        <div class='row'>[m
[32m+[m[32m        <div class="col-md-12" style="padding: 15px;">[m
[32m+[m[32m          <%= form_for(:schedule) do |f| %>[m
[32m+[m[32m            <ul class='list-inline text-center'>[m
[32m+[m[32m                <li><%= f.check_box :all %> Mostrar todos </li>[m
[32m+[m[32m                <li><%= f.check_box :programacao %> Programação </li>[m
[32m+[m[32m                <li><%= f.check_box :design %> Design </li>[m
[32m+[m[32m                <li><%= f.check_box :design %> Empreendedorismo </li>[m
[32m+[m[32m            </ul>[m
[32m+[m[32m          <% end %>[m
[32m+[m[32m        </div>[m
 [m
[32m+[m[32m        <div class='row'>[m
           <div class='col-md-4'>[m
            <div class='col-md-12'>[m
              <div class='panel panel-default padding'>[m
[1mdiff --git a/app/views/layouts/application.html.erb b/app/views/layouts/application.html.erb[m
[1mindex d555cd0..86f41ca 100644[m
[1m--- a/app/views/layouts/application.html.erb[m
[1m+++ b/app/views/layouts/application.html.erb[m
[36m@@ -11,7 +11,8 @@[m
     <script><%= yield :js %></script>[m
   </head>[m
 [m
[31m-  <body class="<%= controller.controller_name %>" data-spy="scroll">[m
[32m+[m[32m  <body ng-controller="ApplicationController"[m
[32m+[m[32m    class="<%= controller.controller_name %>" data-spy="scroll">[m
     <%= yield %>[m
   </body>[m
 </html>[m
