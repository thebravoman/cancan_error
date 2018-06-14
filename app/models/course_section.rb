# This class provides structure for the content.
# Content objects are Episodes, Materials and others.
# CourseSection will order the content and reference
# it using a ContentRef objects. CourseSections are
# located in a course and are uniquely bound to a course.

# = Structure
# CourseSections were designed mainly as a way to structure content in order
# where content is an arbitrary type from a fixed list of types.
#
# The structure of the content is the following
# CourseSection has many ContentRefs. Each ContentRef has one content.

# - CourseSection
#    - Episodes
#    - Materials
#    - Labels
#    - Tasks
#    - Pages
#    - CourseSections (:referrenced and :contained )

# A CourseSection could also be a content and could be referred by content refs
# creating in this way a tree like structure where on CourseSection contains
# another.

# It is possible to use the CourseSections to create deep trees, but this is not
# why the CourseSections were designed. In a perfect scenario the tree will be
# 1 to 2 levels deep. The CourseSection contained in another CourseSection will not
# contain course section. In this way the complexity of the platform is reduced
# while providing enough power to express many ideas for structuring a content.

# CourseSections could be referred in other course sections
# There are two type of referrences. :referrences and :contained

# :referrences - the CourseSection could be referrenced in many other course sections
# and even outside of the course
# :contained - the CourseSection could be contained in only one course section
# that is called the parent course section

# A CourseSection contained in another CourseSection can not have a position in the course.
# It eighter has position and is considered a top level section or it is contained in another section.

# CourseSections can not be contained on more than one place because we need to distiguish the content refs
# in each section and make it unique. A problem that occurs is the following

# course_section_1 referres to task_1.
# course_section_2 contains course_section_1
# coruse_section_3 contains course_section_1

# If the user has solved course_section_1/task_1 when working on course_section_2
# does it mean that he has also solved course_section_1/task_1 that is located in course_section_3.

# It would make the platform very powerfull, but extremelly difficult to understand if this is the case.
# To reduce the complexity of the platform we allow a CourseSection to be contained only onces
# and accomplishing the tasks in this course section creates task_complitions bounded to this content_refs.
# The user does not automatically accomplish all the CourseSection that refer to this tasks.

# = Publicity
# A Course Section can be public. This means it could be accessed without access to the course.
# If a Course Section is accessible this does not mean the content in it is accessible. This gives
# the ability to show a demo of the cours and how a course is structured.

# Author::    Kiril Mitov  (mailto:k.mitov@robopartans.com)
# Copyright:: Copyright (c) 2018 Robopartans Group
# License::   All rights reserved
class CourseSection < ApplicationRecord

end
