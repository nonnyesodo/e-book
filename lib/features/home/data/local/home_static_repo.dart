import 'package:flutter/material.dart';
import 'package:ebook_task/features/home/data/model/book_model.dart';

class HomeStaticRepo {
  static List<BottomNavModel> bottomNav = [
    BottomNavModel(
        iconActivate: Icons.home,
        iconInactive: Icons.home_outlined,
        label: 'Home'),
    BottomNavModel(
        iconActivate: Icons.chat_bubble,
        iconInactive: Icons.chat_bubble_outline,
        label: 'Chat'),
    BottomNavModel(
        iconActivate: Icons.person_3,
        iconInactive: Icons.person_3_outlined,
        label: 'Profile'),
  ];

  static List<BooksModel> books = [
    BooksModel(
        avatar:
            'https://coverart.oclc.org/ImageWebSvc/oclc/+-+3584215756_140.jpg?allowDefault=false&client=WorldcatOrgUI',
        author: 'Miguel de Cervantes',
        rating: '4.0',
        title: 'Don Quixote',
        summary:
            "The final and greatest utterance of the human mind. -- Fyodor Dostoyevsky. A founding work of modern Western literature, Cervantes' masterpiece has been translated into more than 60 languages and the novel's elderly knight, Don Quixote, and his loyal squire, Sancho Panza, rank among fiction's most recognized characters. This monumental parody of chivalric romances and epic of heroic idealism presents a strikingly contemporary narrative that also reflects the historical realities of 17th century Spain",
        content: [
          'In a village of La Mancha, the name of which I have no desire to call to mind, there lived not long since one of those gentlemen that keep a lance in the lance-rack, an old buckler, a lean hack, and a greyhound for coursing. An olla of rather more beef than mutton, a salad on most nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra on Sundays, made away with three-quarters of his income. ',
          'The rest of it went in a doublet of fine cloth and velvet breeches and shoes to match for holidays, while on week-days he made a brave figure in his best homespun. He had in his house a housekeeper past forty, a niece under twenty, and a lad for the field and market-place, who used to saddle the hack as well as handle the bill-hook. The age of this gentleman of ours was bordering on fifty; he was of a hardy habit, spare, gaunt-featured, a very early riser and a great sportsman. They will have it his surname was Quixada or Quesada (for here there is some difference of opinion among the authors who write on the subject), although from reasonable conjectures it seems plain that he was called Quexana. This, however, is of but little importance to our tale; it will be enough not to stray a hair\'s breadth from the truth in the telling of it.'
        ]),
    BooksModel(
        avatar:
            'https://coverart.oclc.org/ImageWebSvc/oclc/+-+34350578_140.jpg?allowDefault=false&client=WorldcatOrgUI',
        author: 'Jane Austen',
        rating: '3.5',
        title: 'Pride and prejudice',
        summary:
            'In early nineteenth-century England, a spirited young woman copes with the suit of a snobbish gentleman, as well as the romantic entanglements of her four sisters',
        content: [
          'IT IS A TRUTH universally acknowledged that a single man in possession of a good fortune must be in want of a wife. However little known the feelings or views of such a man may be on his first entering a neighborhood, this truth is so well fixed in the minds of the surrounding families, that he is considered as the rightful property of some one or other of their daughters',
          '“My dear Mr. Bennet,” said his lady to him one day, “have you heard that Netherfield Park is let at last?”Mr. Bennet replied that he had not. “But it is,” returned she, “for Mrs. Long has just been here, and she told me all about it". ”Mr. Bennet made no answer. “Do you not want to know who has taken it?” cried his wife, impatiently.'
        ]),
    BooksModel(
        avatar:
            'https://coverart.oclc.org/ImageWebSvc/oclc/+-+16521777_140.jpg?allowDefault=false&client=WorldcatOrgUI',
        author: 'Charles Dickens',
        rating: '3.5',
        title: 'A tale of two cities',
        summary:
            'Presents Dickens classic novel of love, courage, and sacrifice set against the cataclysmic events of the French Revolution. During the French Revolution a sissolute English lawyer goes to th eguillotine to save a French aristocrat, husband of the woman he loves',
        content: [
          '''It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it was the epoch of belief, it was the epoch of incredulity, it was the season of Light, it was the season of Darkness, it was the spring of hope, it was the winter of despair, we had everything before us, we had nothing before us, we were all going direct to Heaven, we were all going direct the other way—in short, the period was so far like the present period, that some of its noisiest authorities insisted on its being received, for good or for evil, in the superlative degree of comparison only.''',
          "There were a king with a large jaw and a queen with a plain face, on the throne of England; there were a king with a large jaw and a queen with a fair face, on the throne of France. In both countries it was clearer than crystal to the lords of the State preserves of loaves and fishes, that things in general were settled for ever."
        ]),
    BooksModel(
        avatar:
            'https://coverart.oclc.org/ImageWebSvc/oclc/+-+82840747_140.jpg?allowDefault=false&client=WorldcatOrgUI',
        author: 'Leo Tolstoy',
        rating: '4.5',
        title: 'War and peace',
        summary:
            'The monumental Russian classic reflects the life and times of Russian society during the Napoleonic War',
        content: [
          'It was in July, 1805, and the speaker was the well-known Anna Pávlovna Schérer, maid of honor and favorite of the Empress Márya Fëdorovna. With these words she greeted Prince Vasíli Kurágin, a man of high rank and importance, who was the first to arrive at her reception. Anna Pávlovna had had a cough for some days. She was, as she said, suffering from la grippe; grippe being then a new word in St. Petersburg, used only by the elite.',
          'All her invitations without exception, written in French, and delivered by a scarlet-liveried footman that morning, ran as follows:If you have nothing better to do, Count (or Prince), and if the prospect of spending an evening with a poor invalid is not too terrible, I shall be very charmed to see you tonight between 7 and 10 Annette Scherer'
        ]),
    BooksModel(
        avatar:
            'https://coverart.oclc.org/ImageWebSvc/oclc/+-+40063136_140.jpg?allowDefault=false&client=WorldcatOrgUI',
        author: 'Albert Camus',
        rating: '2.5',
        title: 'The stranger',
        summary:
            'A young Algerian, Meursault, afflicted with a sort of aimless inertia, becomes embroiled in the petty intrigues of a local pimp and, somewhat inexplicably, ends up killing a man. Once he\'s imprisoned and eventually brought to trial, his crime, it becomes apparent, is not so much the arguably defensible murder he has committed as it is his deficient character. In the story of an ordinary man who unwittingly gets drawn into a senseless murder on a sun-drenched Algerian beach, Camus was exploring what he termed the nakedness of man faced with the absurd. Now in a new American translation, the classic has been given new life for generations to come',
        content: [
          'When Meursault arrives, he meets with the director of the old persons’ home, who assures Meursault that he should not feel bad for having sent his mother there. The director asserts that it was the best decision Meursault could have made, given his modest salary. He tells Meursault that a religious funeral has been planned for his mother, but Meursault knows that his mother never cared about religion. After the brief conversation, the director takes Meursault to the small mortuary where his mother’s coffin has been placed.',
          'Alone, Meursault sees that the coffin has already been sealed. The caretaker rushes in and offers to open the casket, but Meursault tells him not to bother. To Meursault’s annoyance, the caretaker then stays in the room, chatting idly about his life and about how funeral vigils are shorter in the countryside because bodies decompose more quickly in the heat. Meursault thinks this information is “interesting and [makes] sense.”'
        ]),
    BooksModel(
        avatar:
            'https://coverart.oclc.org/ImageWebSvc/oclc/+-+2074434856_140.jpg?allowDefault=false&client=WorldcatOrgUI',
        author: '	Franz Kafka',
        rating: '3.5',
        title: 'The Trial',
        summary:
            'This new edition of Kafka\'s The Trial includes a comprehensive selection of extra material, including notes on the text, pictures and a section on Kafka\'s life and works.',
        content: [
          'Someone must have been telling lies about Josef K., he knew he had done nothing wrong but, one morning, he was arrested. Every day at eight in the morning he was brought his breakfast by Mrs. Grubach\'s cook - Mrs. Grubach was his landlady - but today she didn\'t come. That had never happened before. K. waited a little while, looked from his pillow at the old woman who lived opposite and who was watching him with an inquisitiveness quite unusual for her, and finally, both hungry and disconcerted, rang the bell. There was immediately a knock at the door and a man entered. He had never seen the man in this house before. He was slim but firmly built, his clothes were black and close-fitting, with many folds and pockets, buckles and buttons and a belt, all of which gave the impression of being very practical but without making it very clear what they were actually for. "Who are you?" asked K., sitting half upright in his bed.',
          'The man, however, ignored the question as if his arrival simply had to be accepted, and merely replied, "You rang?" "Anna should have brought me my breakfast, said K. He tried to work out who the man actually was, first in silence, just through observation and by thinking about it, but the man didn\'t stay still to be looked at for very long. Instead he went over to the door, opened it slightly, and said to someone who was clearly standing immediately behind it, "He wants Anna to bring him his breakfast." There was a little laughter in the neighbouring room, it was not clear from the sound of it whether there were several people laughing. The strange man could not have learned anything from it that he hadn\'t known already, but now he said to K., as if making his report "It is not possible." "It would be the first time that\'s happened," said K.',
          'As he jumped out of bed and quickly pulled on his trousers. "I want to see who that is in the next room, and why it is that Mrs. Grubach has let me be disturbed in this way." It immediately occurred to him that he needn\'t have said this out loud, and that he must to some extent have acknowledged their authority by doing so, but that didn\'t seem important to him at the time. That, at least, is how the stranger took it, as he said, "Don\'t you think you\'d better stay where you are?" "I want neither to stay here nor to be spoken to by you until you\'ve introduced yourself." "I meant it for your own good," said the stranger and opened the door, this time without being asked. The next room, which K. entered more slowly than he had intended, looked at first glance exactly the same as it had the previous evening. It was Mrs. Grubach\'s living room, over-filled with furniture, tablecloths, porcelain and photographs.'
        ]),
  ];
}

class BottomNavModel {
  final String label;
  final IconData? iconActivate, iconInactive;
  BottomNavModel(
      {required this.label,
      required this.iconActivate,
      required this.iconInactive});
}
