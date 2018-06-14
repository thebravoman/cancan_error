# Author::    Kiril Mitov  (mailto:k.mitov@robopartans.com)
# Copyright:: Copyright (c) 2018 Robopartans Group
# License::   All rights reserved
class CourseSectionsController < ApplicationController
  load_and_authorize_resource

  def edit
  end
  def current_user
    nil
  end

end
