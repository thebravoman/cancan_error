Issue is that when there is an error in the controller or the view then hundreds of queries are output to the console increasing the time waiting when an error occurs to about a minute which is unproductive.   

````
bundle install
rails s

````

go to /course_sections/1/edit

The following error occurs

````
ActionView::Template::Error (undefined local variable or method `tt' for #<#<Class:0x00000000cf6b10>:0x00000000edef68>
Did you mean?  t):
    1: <% tt.tt %>
````

That is not the problem. The problem is that when an error occurs this is output in the console
````
Started GET "/course_sections/1/edit" for 127.0.0.1 at 2018-06-14 21:58:29 +0300
Processing by CourseSectionsController#edit as HTML
  Parameters: {"id"=>"1"}
  CourseSection Load (0.2ms)  SELECT  "course_sections".* FROM "course_sections" WHERE "course_sections"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
  Rendering course_sections/edit.html.erb
  Episode Load (0.1ms)  SELECT  "episodes".* FROM "episodes" LIMIT ?  [["LIMIT", 11]]
  Material Load (0.1ms)  SELECT  "materials".* FROM "materials" LIMIT ?  [["LIMIT", 11]]
  CACHE Episode Load (0.0ms)  SELECT  "episodes".* FROM "episodes" LIMIT ?  [["LIMIT", 11]]
  CACHE Material Load (0.0ms)  SELECT  "materials".* FROM "materials" LIMIT ?  [["LIMIT", 11]]
  CACHE Episode Load (0.0ms)  SELECT  "episodes".* FROM "episodes" LIMIT ?  [["LIMIT", 11]]
  CACHE Material Load (0.0ms)  SELECT  "materials".* FROM "materials" LIMIT ?  [["LIMIT", 11]]
  CACHE Episode Load (0.0ms)  SELECT  "episodes".* FROM "episodes" LIMIT ?  [["LIMIT", 11]]
  CACHE Material Load (0.0ms)  SELECT  "materials".* FROM "materials" LIMIT ?  [["LIMIT", 11]]
  CACHE Episode Load (0.0ms)  SELECT  "episodes".* FROM "episodes" LIMIT ?  [["LIMIT", 11]]
  CACHE Material Load (0.0ms)  SELECT  "materials".* FROM "materials" LIMIT ?  [["LIMIT", 11]]
  CACHE Episode Load (0.0ms)  SELECT  "episodes".* FROM "episodes" LIMIT ?  [["LIMIT", 11]]
  CACHE Material Load (0.0ms)  SELECT  "materials".* FROM "materials" LIMIT ?  [["LIMIT", 11]]
  CACHE Episode Load (0.0ms)  SELECT  "episodes".* FROM "episodes" LIMIT ?  [["LIMIT", 11]]
  CACHE Material Load (0.0ms)  SELECT  "materials".* FROM "materials" LIMIT ?  [["LIMIT", 11]]
  CACHE Episode Load (0.0ms)  SELECT  "episodes".* FROM "episodes" LIMIT ?  [["LIMIT", 11]]
  CACHE Material Load (0.0ms)  SELECT  "materials".* FROM "materials" LIMIT ?  [["LIMIT", 11]]
  Rendered course_sections/edit.html.erb (247.5ms)
Completed 500 Internal Server Error in 275ms (ActiveRecord: 2.8ms)
````

Here you can see a log of CACHE errors.

This project is a very simple example, but in a real life scenario, especially when the episodes and materials have some logic and globalize installed then hundreds of queries are output to the console and it takes about a minute.

This means that if there is and error on the server durring development we must wait about a minute which is unproductive.
