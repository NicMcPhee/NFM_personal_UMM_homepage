---
layout: syllabus
discipline: CSci
course_number: 3402
title: "Computing Systems: Concepts"
credits: 3
semester: Spring
year: 2016
room: Sci 2185
times: Tuesday, 10-11:40am; Thursday 10-10:50am
prereqs: (CSci 1302 or Math 2202 or Math 3411) and CSci 2101
catalog_description: Overview of computing systems, operating systems, and networks. Sources of complexity. Fundamental abstractions such as memory, processing, and communication; memory management and data storage; threads, processes, race conditions and deadlock; and inter-process and inter-computer communication. Modularity and organization; virtualization; protection and security; performance.
faculty: Nic McPhee
course_management_url: https://classroom.google.com/c/NDM0MDEwNjE1
---

Welcome to <em>{{ page.title }}</em> ({{ page.discipline}} {{ page.course_number}}).
This is a {{ page.credits }} credit course which has slightly odd meeting times:

 - Tuesdays, 10-11:40am
 - Thursdays, 10-10:50am

The pre-requisites for this are CSci 1302 (or Math 2202 or Math 3411 –
basically some discrete math) and CSci 2101 (for both data structures and
programming experience). This is primarily a book/pencil and paper course,
with a fair bit of writing.

# Course description

The catalog description:

> {{ page.catalog_description }}

This is the "book part" of the (now) pair of systems core courses which, along
with Algorithms & Computability (CSci 3501) and Software Design & Development
(CSci 3601), forms the "center" of our major between Data Structures and the
electives. It's here that we cover the basics of computing systems, including
operating systems and networks, with a particular emphasis on the sources of
the complexity that can make
it so difficult to work with these important systems, and ways to manage
that complexity.

This semester represents the second half of a major experiment, where we've split
the CSci 3401 course into two parts: CSci 3402 (Concepts – this course) and
CSci 3403 (Practicum – the lab course). Several of you were in the Practicum course
last semester; most of the rest of you will probably take it next Fall. The
major impact on this course is that we'll be able to cover some important
concepts (such as performance, fault tolerance, and security) that tended to
get short shrift in the past.

# Course goals and learning objectives

The key areas for this course, along with specific learning objectives:

 - Systems design and organization
   - Analyze and evaluate system design decisions.
   - Understand and apply different types of modularity to help manage the system complexity.
 - Operating systems
   - Understand how modularity, naming, and layering are used in operating system design.
   - Understand a variety of key operating systems concepts such as process management, memory management, and file systems.
 - Networks
   - Understand how modularity, naming, and laying are used in network design and management.
   - Understand the basics of network communication and some key algorithms such as routing.

# Texts and other materials

This course has one required text: [<em>Principles of computer system design</em>](http://ocw.mit.edu/resources/res-6-004-principles-of-computer-system-design-an-introduction-spring-2009/index.htm) by Jerome H. Saltzer and M. Frans Kaashoek, Morgan Kaufmann, ISBN 978-0-12-374957-4.

A neat feature of this book is that it comes in two volumes. What's listed above is the first volume, containing chapters 1-6. The second volume, containing chapters 7-11, is available for free on-line. The idea is that the material in the first volume is central and would be covered in almost any course using the book, while instructors can pick and choose (to some degree) from the material in the second volume without requiring students to spend a ton on chapters they won't use.

Another cool feature (which came as a complete surprise) is that the entirety of the first volume is actually available as a set of PDFs (one per chapter) through [Briggs Library](http://www.morris.umn.edu/library). Search for the title in Pounce, and there will be a link in the result to the electronic version. I think this is actually a really well written book worth buying and having on your shelf, but I certainly understand if you choose to use the electronic copy instead. Remember, however, that UMM's paying a non-trivial subscription fee for this access, and any copies you download should be just for your personal use.

We will also read a number of articles during the semester; most of these will be available on-line or through Briggs Library. We will also use various on-line resources to augment the text.

# Course outline

See the [course schedule](../schedule) for the calendar and outline of the course.

# Course work and grading

The main deliverables will be:

 - Written assignments and problem sets (roughly once every other week): 20% total
 - Two one page memo writing assignments: 20% each
 - A take-home mid-term: 20%
   - Handed out Thursday, 3 March
   - Due Thursday, 10 March (the Thursday before Spring Break)
 - A take-home final exam: 20%
   - Handed out Tuesday, 3 May
   - Due at 1pm, Wednesday, 11 May (the end of the scheduled finals period)

We will frequently have readings both from the course the text from outside sources (research articles, for example) with discussion in class. You need to read these pieces in advance of our discussion in class, and I reserve the right to call on people at random, so make sure you take notes and come prepared.

There will also be several informal assignments, usually composed of problems from the course text. You won't always need to write these up and turn them in, but I will expect everyone to have worked on them and come to class prepared to discuss your answers. Some will have fairly straightforward answers, while others will be much more open ended. You're welcome to discuss these informally outside of class, but everyone should be prepared to share and participate in class. While you won't always have to turn anything in, having some notes (the design of a network, the results of an experiment, a list of ideas) may be crucial for quality participation, so come prepared. I again reserve the right to call on people at random :-).

Grades will be entered on [the course Google Classroom site]({{ page.course_management_url }}) and can be checked there throughout the semester. If you have any questions or concerns, please bring them up right away when it's much easier to address them.
