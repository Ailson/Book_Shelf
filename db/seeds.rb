<<<<<<< HEAD
fisrt_user  = User.create(name: 'First User')
second_user = User.create(name: 'Second User')

clean_code = Book.new(title: 'Clean Code', picture: 'http://ecx.images-amazon.com/images/I/41znMZniZ1L._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg', description: 'Even bad code can function. More importantly, you will be challenged to reassess your professional values and your commitment to your craft.')

first_user.Books << clean_code
clean_code.Save

reinventing_comics = Book.new(title: 'Reinventing Comics', picture: 'http://ecx.images-amazon.com/images/I/51DM1YT8GAL._SL500_AA300_.jpg', description: 'In 1993, Scott McCloud tore down the wall between high and low culture with the acclaimed international hit Understanding Comics, a massive comic book that explored the inner workings of the worlds most misunderstood art form. Now, McCloud takes comics to te next leavle, charting twelve different revolutions in how comics are created, read, and preceived today, and how they are poised to conquer the new millennium.')
frst_user.Books << reinventing_comics
reinventing_comics.Save

graphic  = Book.new(title: 'Graphic Storytelling and Visual Narrative', picture: 'http://ecx.images-amazon.com/images/I/51wnV8Lzy0L._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg', description: 'In 1993, Scott McCloud tore down the wall between high and low culture with the acclaimed international hit Understanding Comics, a massive comic book that explored the inner workings of the worlds most misunderstood art form. Now, McCloud takes comics to te next leavle, charting twelve different revolutions in how comics are created, read, and preceived today, and how they are poised to conquer the new millennium.')
first_user.Books << graphic
graphic.Save
=======
first_user  = User.create(name: 'First User')

clean_code = Book.new(title: 'Clean Code', picture: 'http://ecx.images-amazon.com/images/I/41znMZniZ1L._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg', description: 'Even bad code can function. More importantly, you will be challenged to reassess your professional values and your commitment to your craft.')
first_user.books << clean_code

reinventing_comics = Book.new(title: 'Reinventing Comics', picture: 'http://ecx.images-amazon.com/images/I/51DM1YT8GAL._SL500_AA300_.jpg', description: 'In 1993, Scott McCloud tore down the wall between high and low culture with the acclaimed international hit Understanding Comics, a massive comic book that explored the inner workings of the worlds most misunderstood art form. Now, McCloud takes comics to te next leavle, charting twelve different revolutions in how comics are created, read, and preceived today, and how they are poised to conquer the new millennium.')
first_user.books << reinventing_comics

graphic  = Book.new(title: 'Graphic Storytelling and Visual Narrative', picture: 'http://ecx.images-amazon.com/images/I/51wnV8Lzy0L._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg', description: 'In 1993, Scott McCloud tore down the wall between high and low culture with the acclaimed international hit Understanding Comics, a massive comic book that explored the inner workings of the worlds most misunderstood art form. Now, McCloud takes comics to te next leavle, charting twelve different revolutions in how comics are created, read, and preceived today, and how they are poised to conquer the new millennium.')
first_user.books << graphic

first_friend = Friend.new(name: 'First Friend', email: 'friend@test.com')
first_user.friends << first_friend

first_user.save
>>>>>>> ed50c4c524b2a5a0a3b9250bc12c3db73e5a34b0
