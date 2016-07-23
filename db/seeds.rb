##################
###### GAMES #####
##################

# Games in russian
I18n.locale = :ru

wow = Game.create(title: "Генератор ников для  World of Warcraft (WoW РП ники и имена)", name: "World of Warcraft", content: "Наверняка многие тысячи игроков сталкивались с выбором имени игрового персонажа. Это не всегда легко - подобрать своему аватару, альтер-эго в игровом мире подходящее ему, вам и вселенной игры имя. Генератор ников отчасти решает эту проблему - с его помощью можно сгенерировать ролевой (рп) ник для WoW, причем суммарно может быть сгенерировано несколько миллионов вариантов - есть где разгуляться!\r\n\r\nГенератор разбит на расы-категории, а поскольку расы в игре World of Warcraft довольно сильно различаются, то и создаваемые имена будут выглядеть соответственно духу и атмосферности выбранной игровой расы.", slug: "wow", description: "Онлайн генератор имен и ников для World of Warcraft")

guild_wars = Game.create(title: "Генератор ников для Guild Wars (РП ники и имена)", name: "Guild Wars", content: "В мире Тирии обитает множество представителей различных рас, и пять из них доступны для активной игры. Гордые люди, изобретательные Асура, умиротворенные Сильвари, воинственные Чарры и суровые Норны - у каждой из этих рас свои собственные имена, и чтобы получить максимальное удовольствие от игры, важно соблюдать её атмосферу. Назовите своего Норна поистине северным именем, которое прославит его далеко за пределами родных снегов или подберите никнейм для любого из ваших персонажей!", slug: "gw2", description: "Онлайн генератор имен и ников для Guild Wars")

samp = Game.create(title: "Генератор ников для GTA San Andreas Multiplayer", name: "San Andreas Multiplayer", content: "Игровой мир GTA San Andreas Multiplayer основан на реальных городах, в которых живут реальные люди множества различных национальностей. Здесь есть немцы, французы, итальянцы и, конечно же, американцы. Для полного погружения в атмосферу игры вам потребуется ролевой (РП) ник для GTA SAMP. Здесь вы сможете сгенерировать себе красивое имя для любой национальности. Создавайте себе мужские и женские имена и фамилии для ваших персонажей!", slug: "samp", description: "Онлайн генератор имен и ников для GTA San Andreas")

minecraft = Game.create(title: "Генератор ников по скинам для Minecraft", name: "Minecraft", content: "Генератор ников по скинам для Minecraft позволит подобрать ник или имя на любой вкус и цвет. Кроме того, помимо простого создания ника Nickshaker предлагает своим пользователям создавать ники вместе со скинами. Это очень просто: нажмите кнопку для получения ника и посмотрите, нравится ли вам скин, который будет на вас в игре, если вы зайдете в Minecraft с таким ником. Если скин вам понравился, запомните ник и войдите в игру, указав его при в ходе и на вашем персонаже появится этот скин!", slug: "minecraft", description: "Онлайн генератор имен и ников для Minecraft, ники по скинам")

# Games in english

I18n.locale = :en
wow = Game.find_by(slug: 'wow')
wow.title = 'Nickname generator for World of Warcraft, roleplay nicknames, pvp nicknames for WoW'
wow.name = 'Nickname generator for World of Warcraft'
wow.content = "Definitely, thousands of players faced the need to choose the name for their character.
It is not always easy to pick a nickname that suits your userpick, alter ego and the realm all at once. Nickname generator partially solves this problem - you can use it to generate roleplay nickname for WoW. By the way, there are millions of possible nicknames, indulge yourself in choosing the best out there! \r\n\r\nGenerator is split to race-based categories and all of the created nicknames look specifically in accordance to race you choose."
wow.save!

minecraft = Game.find_by(slug: 'minecraft')
minecraft.title = 'Nicknames by skins for Minecraft'
minecraft.name = 'Nickname generator for Minecraft'
minecraft.content = 'Minecraft nickname genarator helps to easily pick a nick suited for every fancy. In addition to simple nickname creation Nickshaker offers its users to get a bundle: nickname+skin. Just click the button to get a nickname and then decide whether you like the offered skin or not. If you log in with this nickname into the game, you will have the associated skin too!'
minecraft.save!

gw2 = Game.find_by(slug: 'gw2')
gw2.title = 'Nickname generator for Guild Wars and Guild Wars 2.'
gw2.name = 'Nickname generator for Guild Wars'
gw2.content = 'In the world of Tyria a lot of races are presented, and there are 5 of them for you to play. Proud human, peaceful Sylvari, craftful Asura, martial Charr and harsh Norn - every race has its own names you would like to have to fit in the spirit of the game and enjoy it at max. Call your Norn with a truly Nordic name to fame him far away from the native snowy plains or pick a nickname for any of your characters!'
gw2.save!

samp = Game.find_by(slug: 'samp')
samp.title = 'English, Italian. Swedish, Danish, German, French and Spanish names for San Andreas Multiplayer (or SAMP)'
samp.name = 'Nickname generator for GTA San Andreas Multiplayer'
samp.content = 'The realm of GTA San Andreas Multiplayer is based on real cities, where real people live. Germans, Italians, French and Americans, of course, live there. For a complete gaming experience you will need a roleplay nickname for GTA SAMP. Here you can generate a fancy nickname for any nationality. Create both male and female names and surnames for your chars!'
samp.save!

##################
###### RACES #####
##################

# Races in russian (WoW and SAMP)

Race.create!([
  {title: "Генератор ников для Орков(РП ники, генератор roleplay ников и имен)", name: "Генератор ников для Орка", content: "Орки - пришельцы из мира Драенор, сейчас более известного как Запределье. Несмотря на изначальную приближенность к духам природы, исторически сложилось так, что орки стали известны в качестве кровожадных и неустрашимых воителей. Имя орка звучит грубо, зачастую резко и не отличается гармонией и красотой.", slug: "orc", description: "", game_id: wow.id},
  {title: "Генератор ников для гномов(РП ники, генератор roleplay ников)", name: "Генератор ников для Гнома", content: "Гномы - искусные механики и инженеры, они обожают мастерить сложные устройства, что нередко приводит к различного масштаба разрушениям. Иногда гномы связывают свою жизнь с магией, что, однако, не мешает звучать их именам так, словно вы потрясли ведро с гайками и болтами.", slug: "gnome", description: "", game_id: wow.id},
  {title: "Генератор ников для дварфов(РП ники, генератор roleplay ников)", name: "Генератор ников для Дворфа", content: "Дворфы появились в Азероте с момента его сотворения. Изначально их раса называлась Земельниками, но эволюция сделала своё дело, и дворфы, кряжистые и несколько грубые создания, стали такими, какими мы знаем их сейчас. Дворфы являются умелыми мастерами горного, кузнечного и пивоваренного дела, поэтому многие из имен связаны с их ремеслом.", slug: "dwarf", description: "", game_id: wow.id},
  {title: "Генератор ников для Тауренов(РП ники, генератор roleplay ников и имен)", name: "Генератор ников для Таурена", content: "Таурены ничуть не меньше ночных эльфов тяготеют к природе. В основе их традиций лежит поклонение солнцу, природе и уважение предков, давших живущим представителям расы свою бесконечную мудрость. Имена тауренов просты и легко запоминаются. Возможно, именно поэтому они звучат довольно приятно, хотя порой несложно распознать и некую воинственность.", slug: "tauren", description: "", game_id: wow.id},
  {title: "Генератор ников для Ночных эльфов(РП ники, генератор roleplay ников и имен)", name: "Генератор ников для Ночного Эльфа", content: "Ночные эльфы - искусные друиды и священники, отличающиеся наибольшей близостью к природе, среди прочих рас. Звучание имен ночных эльфов приятно на слух - тяга этой расы к жизни и гармонии сделала их красивыми и запоминающимися. У эльфов нет бессмысленных имен - каждый звук имеет своё значение.", slug: "nightelf", description: "", game_id: wow.id},
  {title: "Генератор ников для Дренеев (РП ники, генератор roleplay ников и имен)", name: "Генератор ников для Дренеев", content: "Дренеи - раса космических беженцев, хранящая в своих заветах поклонение свету, веру в пророчества и почитание Наару - своих небесных покровителей. Имена дренеев традиционно содержат много гласных, что делает их непривычными для слуха коренных обитателей Азерота.", slug: "draenei", description: "", game_id: wow.id},
  {title: "Генератор ников для Воргенов(РП ники, генератор roleplay ников и имен)", name: "Генератор ников для Воргенов", content: "Напрасно Генн Седогрив ожидал, что его великая стена спасет народ Гилнеаса от любой опасности. Горькая судьба постигла жителей славного королевства несмотря на все надежды. Любой ворген - в первую очередь бывший представитель гордого королевства Гилнеас, а значит, ему пристало достойное имя. Имя, которое прославит его обладателя, несмотря на его проступающую волчью натуру.", slug: "worgen", description: "", game_id: wow.id},
  {title: "Генератор ников для Гоблинов(РП ники, генератор roleplay ников и имен)", name: "Генератор ников для Гоблинов", content: "То, что гоблины все еще не вымерли, можно объяснить лишь их потрясающей везучестью и свойственной им деловой жилкой. Большинство представителей этой расы оказываются довольно-таки жадными, как до денег, так и до взрывчатки. Если вашего собеседника зовут как-то вроде \"Златовзрыв\" - постарайтесь не иметь с ним дел. Это может оказаться чревато для вашего кошелька, здоровья или жизни. Или - для всего и сразу.", slug: "goblin", description: "", game_id: wow.id},
  {title: "Генератор ников для людей (человек)(РП ники, генератор roleplay ников)", name: "Генератор ников для Человека", content: "Люди - одна из наиболее молодых рас Азерота. Многие представители человеческой расы посвящают себя служению свету, магии или становятся доблестными воителями. Имена людей как правило просты, но неизменно несут в себе некий смысл. И ничего страшного, что со временем он позабылся или его на самом деле никогда не было.", slug: "human", description: "", game_id: wow.id},
  {title: "Генератор ников для Троллей(РП ники, генератор roleplay ников и имен)", name: "Генератор ников для Тролля", content: "Тролли - древняя воинственная раса, отличающася так же и уважением к традициям своего народа. Тролли недалеко продвинулись в технологиях, но чтут заветы своих шаманов, время от времени не забывая раскурить трубочку и поговорить о вуду. Имена троллей звучат порой грубовато, но не лишены некоторого шарма.", slug: "troll", description: "", game_id: wow.id},
  {title: "Генератор ников для нежити и отрекшихся(РП ники, генератор roleplay ников и имен)", name: "Генератор ников для Нежити", content: "Отрекшиеся - восставшие люди бывшего Лордаерона. В бытность свою людьми они, разумеется, носили человеческие имена, которые сейчас, возможно, звучат слегка старомодно. Однако, это лишь придает существованию верных служителей королевы баньши некоторую горечь, не дающую позабыть об их прошлом - ведь когда-то все они были людьми.", slug: "undead", description: "", game_id: wow.id},
  {title: "Генератор ников для эльфов крови(РП ники, генератор roleplay ников и имен, кровавые эльфы, блад эльфы)", name: "Генератор ников для Эльфов Крови", content: "Эльфы крови - гордая, надменная раса, предками которой являются легендарные высшие эльфы. Они тяготеют к солнцу и магии, именно поэтому их имена нередко несут в себе нечто волшебное, гордое и неустрашимое. Звучание их имен внушает уверенность в их непоколебимости и верности идеалам своего народа.", slug: "bloodelf", description: "", game_id: wow.id},
  {title: "Генератор ников для Пандаренов(РП ники, генератор roleplay ников и имен, панды)", name: "Генератор ников для Пандаренов", content: "Пандарены - древняя раса медведеподобных существ, которые славятся своей приверженностью к пиву, боевым искусствам и самосовершенствованию. Их имена повторяют традиции Востока - каждый слог имеет собственное значение, а если перевести имя пандарена на один из распространенных в Азероте языков, несложно будет оценить всю его красоту.", slug: "pandaren", description: "", game_id: wow.id},
  {title: "Асура - Генератор ников для Guild Wars 2", name: "Генератор ников для Асура", content: "Имена представителей расы Асура очень редко бывают длинными. Они составлены из одного или двух слогов и зачастую имеют повторяющиеся согласные. Это справедливо как в отношении женских, так и мужских имен. Имя Асура - одно слово, они не имеют фамилий. Вторым словом может служить должность, профессия или звание, полученное за какие-либо заслуги. Те же, кто все же берет себе второе имя, считаются другими асура эксцентричными чудаками.", slug: "asura", description: "", game_id: guild_wars.id},
  {title: "Сильвари - Генератор ников для Guild Wars 2", name: "Генератор ников для Сильвари", content: "Сильвари - нерожденные дети великого древа, и потому не имеют фамилии. Имя Сильвари звучит прямо и честно, а отсутствие второго имени не дает забыть никому из них - и из окружающих - о том, что каждый Сильвари является частью единой семьи, единого мира и всей Тирии.", slug: "sylvari", description: "", game_id: guild_wars.id},
  {title: "Норн - Генератор ников для Guild Wars 2", name: "Генератор ников для Норнов", content: "Суровый северный народ Норнов издревле брал себе соответствующие характеру и складу души имена. Родители нарекали ребенку имя - а тот должен был прославить его в меру своих способностей. Искусные охотники и любители крепкой выпивки, - а как без неё в холодах? - Норны нередко отличались и на воинском поприще, за что и получали грозные прозвища. Именно эти прозвища со временем и стали их фамилиями.", slug: "norn", description: "", game_id: guild_wars.id},
  {title: "Чарр - Генератор ников для Guild Wars 2", name: "Генератор ников для Чарров", content: "Взращенные в пламени и дыму непрекращающихся войн, Чарры, более всего похожие на воинственных рогатых котов, дают своим детям резкие, но вместе с тем и звучные имена. Фамилии - вторые имена - чарров являются так же их прозвищами. Если кот отличается легкой походкой, не оставляющей следов на снегу, вероятнее всего, что товарищи его так и прозовут - Тихоступ.", slug: "charr", description: "", game_id: guild_wars.id},
  {title: "Ники для Minecraft, Minecraft ники по скинам, мужские имена для Minecraft", name: "Ники для Майнкрафт", content: "Ники для Minecraft могут быть какими угодно. Тем не менее, многие сервера требуют, чтобы имя соответствовало атмосфере игры. Игрок должен создать для своего персонажа Minecraft ролевой ник или имя. На этой странице вы можете создать множество ников для мальчиков. Просто нажимайте кнопку \"Создать имя\" и выбирайте то, что вам нравится.", slug: "man", description: "", game_id: 4},
  {title: "Ники для девушек Minecraft, Minecraft ники по скинам, имена для девочек Minecraft", name: "Ники для Майнкрафт для девушек", content: "Minecraft - удивительная игра, и если играть в неё с друзьями, важно правильно подобрать имя. При игре в Minecraft ники для девочек, а точнее их поиск, могут доставить некоторые проблемы. Ники для девушек в Minecraft должны отражать их сущность, характер и личность. Если вы хотите создать или придумать женский ник или имя для игры в Minecraft, просто нажимайте кнопку и забирайте понравившееся имя.", slug: "woman", description: "", game_id: 4},
  {title: "Красивые немецкие имена - генератор имен и ников для SAMP", name: "Красивые немецкие имена и фамилии", content: "Немецкие имена известны своей громкостью и некоторой грубостью в звучании. Однако, красивые женские имена и фамилии вовсе не редкость в Германии. Так же, как и мужские, они имеют некоторую жесткость, но эта жесткость так же придает и уникальность звучанию, не говоря уже о собственном очаровании и шарме. Генератор ников позволит создать красивое немецкое имя и фамилию для вашего персонажа в SAMP.", slug: "german", description: "", game_id: samp.id},
  {title: "Красивые французские имена и фамилии - генератор ников для SAMP", name: "Красивые французские имена - генератор имен и ников для SAMP", content: "Известно, что французские имена и фамилии - одни из самых красивых в мире. Французы и француженки говорят на легком, воздушном языке, который не допускает грубого произношения. Поэтому красивые французские имена и фамилии свойственны как мужчинам, так и женщинам. На этой странице очень легко создать французское имя для игры в SAMP.", slug: "french", description: "", game_id: samp.id},
  {title: "Красивые итальянские имена и фамилии - генератор ников для SAMP", name: "Красивые итальянские имена и фамилии", content: "Итальянцы - темпераментная и яркая нация. История и традиции этого народа сделала вытачивала имена несколько столетий. Красивые итальянские имена и фамилии - совсем не редкость (как мужские, так и женские), хотя для самих итальянцев это обычное дело. Создайте красивую фамилию для San Andreas Multiplayer и погрузитесь в игру как настоящий итальянец!", slug: "italian", description: "", game_id: samp.id},
  {title: "Красивые датские имена и фамилии - генератор ников для SAMP", name: "Красивые датские имена и фамилии", content: "Дания - родина одного великого сказочника со звучным и громким именем. Датские имена сохраняют в себе традиционное произношение и меняются не так быстро, как имена иных народов. Создайте красивое мужское или женское имя и фамилию для игры в GTA San Andreas Multiplayer и отыгрывайте роль датчанина в мире SAMP.", slug: "danish", description: "", game_id: samp.id},
  {title: "Красивые шведские имена и фамилии - генератор ников для SAMP", name: "Красивые шведские имена и фамилии", content: "Шведы - северный народ, в их именах слышны отзвуки старинных традиций и морозной зимы. Красивые шведские имена составляют примерно половину от всех имен, присущих жителям Скандинавии. То же самое можно сказать и о красивых шведских фамилиях. Здесь легко сгенерировать красивое мужское или женское шведское имя и фамилию для игры в SAMP.", slug: "swedish", description: "", game_id: samp.id},
  {title: "Красивые испанские имена и фамилии - генератор ников для SAMP", name: "Красивые испанские имена и фамилии", content: "Страстные испанцы зачастую обладают несколько резкими для непривычного человека именами. Однако, они не лишени своеобразной красоты, и если хоть на секунду задуматься, испанские имена такие же красивые, как и у других народов. Красивые испанские фамилии встречаются не так часто, но и их достаточно много, чтобы сгенерировать мужское (или женское) имя и фамилию для GTA San Andreas Multiplayer.", slug: "spanish", description: "", game_id: samp.id},
  {title: "Красивые английские имена - генератор имен и ников для SAMP", name: "Красивые английские(американские) имена и фамилии", content: "Жители туманного Альбиона и всех Соединенных Королевств отличаются прекрасными старинными именами. Красивые английские имена и фамилии являются их достоянием, многие семья ведут свой род со средних веков и по сей день сохраняют красивые фамилии. Создайте себе английское или американское (мужское или женское) имя и фамилию для San Andreas Multiplayer.", slug: "english", description: "", game_id: samp.id},
  {title: "Человек - Генератор ников для для персонажей Guild Wars 2", name: "Генератор ников для Людей", content: "Имя Человека привычно слуху большинства рас Тирии. Имена бывают короткие и длинные, исполненные значимости и просто имена. В качестве второй части имени люди используют фамилию - она указывает на принадлежность к определенной семье, а, поскольку семья для этой расы имеет немалое значение, то и фамилии носят практически все её представители.", slug: "human-of-tyria", description: "", game_id: guild_wars.id}
])

# Races in english (SAMP)

I18n.locale = :en
german = Race.find_by(slug: 'german')
german.title = 'Beautiful German names and surnames'
german.name = 'Beautiful German names and surnames'
german.content = 'The German names are known for the loudness and some roughness in sounding. However, beautiful female names and surnames in at all not a rarity in Germany. As well as man\'s, they have some rigidity, but this rigidity also gives also uniqueness to sounding, not to mention own charm and charm. The generator of nicknames will allow to create a beautiful German name and a surname for your character in SAMP.'
german.save!

french = Race.find_by(slug: 'french')
french.title = 'Beautiful French names and surnames'
french.name = 'Beautiful French names and surnames'
french.content = 'It is known that the French names and surnames - one of the most beautiful in the world. French and Frenchwomen speak easy, air language which doesn\'t allow a rough pronunciation. Therefore beautiful French names and surnames are peculiar both to men, and women. On this page it is very easy to create the French name for game in SAMP.'
french.save!

italian = Race.find_by(slug: 'italian')
italian.title = 'Beautiful Italian names and surnames'
italian.name = 'Beautiful Italian names and surnames'
italian.content = 'Italians - the temperamental and bright nation. The history and traditions of these people made turned names some centuries. Beautiful Italian names and surnames - at all not a rarity (both man\'s, and female), though for Italians this commonplace. Create a beautiful surname for San Andreas Multiplayer and plunge into game as the real Italian!'
italian.save!

denmark = Race.find_by(slug: 'danish')
denmark.title = 'Beautiful Danish names and surnames'
denmark.name = 'Beautiful Danish names and surnames'
denmark.content = 'Denmark - the homeland of one great storyteller with a sonorous and big name. The Danish names keep in themselves a traditional pronunciation and change not so quickly, as names of other people. Create a beautiful man\'s or female name and a surname for game in GTA San Andreas Multiplayer and win back a role of the Dane in the world of SAMP.'
denmark.save!

sweden = Race.find_by(slug: 'swedish')
sweden.name = 'Beautiful Swedish names and surnames'
sweden.title = 'Beautiful Swedish names and surnames'
sweden.content = 'Swedes - the northern people, in their names are audible echoes of ancient traditions and frosty winter. Beautiful Swedish names make about a half from all names inherent in inhabitants of Scandinavia. The same can be told and about beautiful Swedish surnames. Here it is easy to generate a beautiful man\'s or female Swedish name and a surname for game in SAMP.'
sweden.save!

spanish = Race.find_by(slug: 'spanish')
spanish.title = 'Beautiful Spanish names and surnames'
spanish.name = 'Beautiful Spanish names and surnames'
spanish.content = 'Passionate Spaniards often possess names, a little sharp for the unusual person. However, they aren\'t deprivations of a peculiar beauty and if though for a second to think, the Spanish names same beautiful, as well as at other people. Beautiful Spanish surnames meet not so often, but also there is a lot of them to generate man\'s (or female) a name and a surname for GTA San Andreas Multiplayer.'
spanish.save!

english = Race.find_by(slug: 'english')
english.name = 'Beautiful English, British and American names and surnames'
english.title = 'Beautiful English (British and American) names and surnames'
english.content = 'Inhabitants of foggy Albion and all Connected Kingdoms differ in fine ancient names. Beautiful English names and surnames are their property, many a family conduct the sort with the Middle Ages and to this day keep beautiful surnames. Create to yourself English or American (man\'s or female) a name and a surname for San Andreas Multiplayer.'
english.save!

# Races in russian (SAMP)
I18n.locale = :ru
german = Race.find_by(slug: 'german')
german.title = 'Красивые немецкие имена - генератор имен и ников для SAMP'
german.name = 'Красивые немецкие имена и фамилии'
german.content = 'Немецкие имена известны своей громкостью и некоторой грубостью в звучании. Однако, красивые женские имена и фамилии вовсе не редкость в Германии. Так же, как и мужские, они имеют некоторую жесткость, но эта жесткость так же придает и уникальность звучанию, не говоря уже о собственном очаровании и шарме. Генератор ников позволит создать красивое немецкое имя и фамилию для вашего персонажа в SAMP.'
german.save!

french = Race.find_by(slug: 'french')
french.title = 'Красивые французские имена и фамилии - генератор ников для SAMP'
french.name = 'Красивые французские имена - генератор имен и ников для SAMP'
french.content = 'Известно, что французские имена и фамилии - одни из самых красивых в мире. Французы и француженки говорят на легком, воздушном языке, который не допускает грубого произношения. Поэтому красивые французские имена и фамилии свойственны как мужчинам, так и женщинам. На этой странице очень легко создать французское имя для игры в SAMP.'
french.save!

italian = Race.find_by(slug: 'italian')
italian.title = 'Красивые итальянские имена и фамилии - генератор ников для SAMP'
italian.name = 'Красивые итальянские имена и фамилии'
italian.content = 'Итальянцы - темпераментная и яркая нация. История и традиции этого народа сделала вытачивала имена несколько столетий. Красивые итальянские имена и фамилии - совсем не редкость (как мужские, так и женские), хотя для самих итальянцев это обычное дело. Создайте красивую фамилию для San Andreas Multiplayer и погрузитесь в игру как настоящий итальянец!'
italian.save!

denmark = Race.find_by(slug: 'danish')
denmark.title = 'Красивые датские имена и фамилии - генератор ников для SAMP'
denmark.name = 'Красивые датские имена и фамилии'
denmark.content = 'Дания - родина одного великого сказочника со звучным и громким именем. Датские имена сохраняют в себе традиционное произношение и меняются не так быстро, как имена иных народов. Создайте красивое мужское или женское имя и фамилию для игры в GTA San Andreas Multiplayer и отыгрывайте роль датчанина в мире SAMP.'
denmark.save!

sweden = Race.find_by(slug: 'swedish')
sweden.name = 'Красивые шведские имена и фамилии - генератор ников для SAMP'
sweden.title = 'Красивые шведские имена и фамилии'
sweden.content = 'Шведы - северный народ, в их именах слышны отзвуки старинных традиций и морозной зимы. Красивые шведские имена составляют примерно половину от всех имен, присущих жителям Скандинавии. То же самое можно сказать и о красивых шведских фамилиях. Здесь легко сгенерировать красивое мужское или женское шведское имя и фамилию для игры в SAMP.'
sweden.save!

spanish = Race.find_by(slug: 'spanish')
spanish.title = 'Красивые испанские имена и фамилии - генератор ников для SAMP'
spanish.name = 'Красивые испанские имена и фамилии'
spanish.content = 'Страстные испанцы зачастую обладают несколько резкими для непривычного человека именами. Однако, они не лишени своеобразной красоты, и если хоть на секунду задуматься, испанские имена такие же красивые, как и у других народов. Красивые испанские фамилии встречаются не так часто, но и их достаточно много, чтобы сгенерировать мужское (или женское) имя и фамилию для GTA San Andreas Multiplayer.'
spanish.save!

english = Race.find_by(slug: 'english')
english.name = 'Красивые английские имена - генератор имен и ников для SAMP'
english.title = 'Красивые английские(американские) имена и фамилии'
english.content = 'Жители туманного Альбиона и всех Соединенных Королевств отличаются прекрасными старинными именами. Красивые английские имена и фамилии являются их достоянием, многие семья ведут свой род со средних веков и по сей день сохраняют красивые фамилии. Создайте себе английское или американское (мужское или женское) имя и фамилию для San Andreas Multiplayer.'
english.save!

# English GW2 Races
I18n.locale = :en
human = Race.find_by(slug: 'human-of-tyria')
human.title = 'Nickname generator for Humans of Tyria'
human.name = 'Nickname generator for Humans of Tyria'
human.content = 'Name of the Person habitually to hearing of the majority of races of Tyria. Names happen the short and long, executed the importance and simply names. As the second part of a name people use a surname - she points to belonging to a certain family, and as the family for this race has considerable value, and surnames are carried practically by all her representatives.'
human.save!

charr = Race.find_by(slug: 'charr')
charr.title = 'Nickname generator for Charr'
charr.name = 'Nickname generator for Charr'
charr.content = 'Grown in a flame and a smoke of continuous wars, Charr, most of all similar to aggressive horned cats, give to the children sharp, but at the same time and sonorous names. Surnames - the second names - charr are also their nicknames. If the cat differs in the light step which isn\'t leaving traces on snow, most likely, that companions and will nickname him - Silentwalker.'
charr.save!

norn = Race.find_by(slug: 'norn')
norn.title = 'Nickname generator for Norn'
norn.name = 'Nickname generator for Norn'
norn.content = 'The severe northern people of Norns since ancient times took himself the names corresponding to character and a warehouse of soul. Parents named to the child a name - and that had to glorify it moderately the abilities. Skillful hunters and fans of strong binge, - and how without it in cold weather? - Norna quite often differed and in a military field, for as got terrible nicknames. These nicknames with time also became their surnames.'
norn.save!

sylvari = Race.find_by(slug: 'sylvari')
sylvari.name = 'Nickname generator for Sylvari'
sylvari.title = 'Nickname generator for Sylvari'
sylvari.content = 'Sylvari - unborn children of a great tree and therefore have no surname. The name of Sylvari sounds directly and honestly, and lack of the second name doesn\'t allow to forget to none of them - and from people around - that each Sylvari is part of a uniform family, the uniform world and all Tyria.'
sylvari.save!

asura = Race.find_by(slug: 'asura')
asura.name = 'Nickname generator for Asura'
asura.title = 'Nickname generator for Asura'
asura.content = 'Names of representatives of race of Asura very seldom happen long. They are made of one or two syllables and often have the repeating concordants. It is fair as concerning female, and man\'s names. A name of Asura - one word, they have no surnames. As the second word the position, a profession or the rank received for any merits can serve. The same who nevertheless takes himself the second name, are considered as others of Asura as excentric odd fellows.'
asura.save!


# Russian GW2 Races
I18n.locale = :ru
human = Race.find_by(slug: 'human-of-tyria')
human.title = 'Человек - Генератор ников для для персонажей Guild Wars 2'
human.name = 'Генератор ников для Людей'
human.content = 'Имя Человека привычно слуху большинства рас Тирии. Имена бывают короткие и длинные, исполненные значимости и просто имена. В качестве второй части имени люди используют фамилию - она указывает на принадлежность к определенной семье, а, поскольку семья для этой расы имеет немалое значение, то и фамилии носят практически все её представители.'
human.save!

charr = Race.find_by(slug: 'charr')
charr.title = 'Чарр - Генератор ников для Guild Wars 2'
charr.name = 'Генератор ников для Чарров'
charr.content = 'Взращенные в пламени и дыму непрекращающихся войн, Чарры, более всего похожие на воинственных рогатых котов, дают своим детям резкие, но вместе с тем и звучные имена. Фамилии - вторые имена - чарров являются так же их прозвищами. Если кот отличается легкой походкой, не оставляющей следов на снегу, вероятнее всего, что товарищи его так и прозовут - Тихоступ.'
charr.save!

norn = Race.find_by(slug: 'norn')
norn.title = 'Норн - Генератор ников для Guild Wars 2'
norn.name = 'Генератор ников для Норнов'
norn.content = 'Суровый северный народ Норнов издревле брал себе соответствующие характеру и складу души имена. Родители нарекали ребенку имя - а тот должен был прославить его в меру своих способностей. Искусные охотники и любители крепкой выпивки, - а как без неё в холодах? - Норны нередко отличались и на воинском поприще, за что и получали грозные прозвища. Именно эти прозвища со временем и стали их фамилиями.'
norn.save!

sylvari = Race.find_by(slug: 'sylvari')
sylvari.name = 'Сильвари - Генератор ников для Guild Wars 2'
sylvari.title = 'Генератор ников для Сильвари'
sylvari.content = 'Сильвари - нерожденные дети великого древа, и потому не имеют фамилии. Имя Сильвари звучит прямо и честно, а отсутствие второго имени не дает забыть никому из них - и из окружающих - о том, что каждый Сильвари является частью единой семьи, единого мира и всей Тирии.'
sylvari.save!

asura = Race.find_by(slug: 'asura')
asura.name = 'Асура - Генератор ников для Guild Wars 2'
asura.title = 'Генератор ников для Асура'
asura.content = 'Имена представителей расы Асура очень редко бывают длинными. Они составлены из одного или двух слогов и зачастую имеют повторяющиеся согласные. Это справедливо как в отношении женских, так и мужских имен. Имя Асура - одно слово, они не имеют фамилий. Вторым словом может служить должность, профессия или звание, полученное за какие-либо заслуги. Те же, кто все же берет себе второе имя, считаются другими асура эксцентричными чудаками.'
asura.save!

# Races in english (Minecraft)
I18n.locale = :en
man = Race.find_by(slug: 'man')
man.name = 'Nicknames for Minecraft'
man.title = 'Minecraft nicknames generator, nicknames for minecraft by skins'
man.content = 'Nicknames for Minecraft can be any. Nevertheless, many servers demand that the name corresponded to the atmosphere of game. The player has to create a role nickname or a name for the character of Minecraft. On this page you can create a set of nicknames for boys. Simply press the button above and choose that is pleasant to you.'
man.save!

# Races in english (Minecraft)
I18n.locale = :ru
man = Race.find_by(slug: 'man')
man.name = 'Ники для Minecraft, Minecraft ники по скинам, мужские имена для Minecraft'
man.title = 'Ники для Майнкрафт'
man.content = 'Ники для Minecraft могут быть какими угодно. Тем не менее, многие сервера требуют, чтобы имя соответствовало атмосфере игры. Игрок должен создать для своего персонажа Minecraft ролевой ник или имя. На этой странице вы можете создать множество ников для мальчиков. Просто нажимайте кнопку \"Создать имя\" и выбирайте то, что вам нравится.'
man.save!

# Races in english (WoW)
I18n.locale = :en
pandaren = Race.find_by(slug: 'pandaren')
pandaren.title = 'Nickname generator for Pandaren, roleplay nicknames for panda in world of warcraft'
pandaren.name = 'Nickname generator for Pandaren'
pandaren.content = 'Pandaren - ancient race of beings who looks like panda bears and are famous for the commitment to beer, martial arts and self-improvement. Their names repeat traditions of the East - each syllable has own value and if to transfer a name of a pandaren to one of languages, widespread in Azerot, it will be simple to estimate all his beauty.'
pandaren.save!

gnome = Race.find_by(slug: 'gnome')
gnome.title = 'Nickname generator for Gnome, roleplay nicknames generator for gnome in world of warcraft'
gnome.name = 'Nickname generator for Gnome'
gnome.content = 'Gnomes are skillful mechanics and engineers and are adore to mastering complex gadgets, which often leads to destructions of one kind or another. Sometimes gnomes link their lives with magic, which does not stop their names sound like you shake a bucket full of screws and bolts.'
gnome.save!

dwarf = Race.find_by(slug: 'dwarf')
dwarf.name = 'Nickname generator for Dwarf'
dwarf.title = 'Nickname generator for Dwarf, roleplay nicknames generator for dwarf in world of warcraft'
dwarf.content = 'Dwarves resided in Azeroth from the moment of its origin. Initially their race was called Earthen, but evolution has stepped forward, and dwarves, thickset and rough, have become what we know them. Dwarves are masters of brewery, mining and blacksmithing and many of their names came from these activities.'
dwarf.save!

nelf = Race.find_by(slug: 'nightelf')
nelf.name = 'Nickname generator for Night Elf'
nelf.title = 'Nickname generator for Night Elf, roleplay nicknames generator for night elf in world of warcraft'
nelf.content = 'Night elves are skillful druids and priests, the most connected to nature when compared to other races. Their names sound pleasantly: their striving for being in harmony made them beatiful and unforgettable. Elves have meaningful names - every sound has its own sense.'
nelf.save!

draenei = Race.find_by(slug: 'draenei')
draenei.title = 'Nickname generator for Draenei, roleplay nicknames generator for draenei in world of warcraft'
draenei.name = 'Nickname generator for Draenei'
draenei.content = 'Draenei are the race of space refugees, keeping in their oath the worship of light, faith in profecies and veneration of Naaru - their celestial patrons. The names of draenei traditionally contain a lot of vowels, which sound a bit unusual to the ear of aboriginal Azeroth races.'
draenei.save!

worgen = Race.find_by(slug: 'worgen')
worgen.name = 'Nickname generator for Worgen'
worgen.title = 'Nickname generator for Worgen, roleplay nicknames generator for werewolf in world of warcraft'
worgen.content = 'Genn Greymane expected in vain his great wall to defend the folk of Gilneas from every threat. The bitter destiny awaited the citizens of glorious kingdom despite of all the hopes. Any worgen - is in the first place the former representative of proud kingdom Gilneas, thus one bears a dignified name. The name, which adds luster to its bearer despite the lupine nature bursting from within.'
worgen.save!

human = Race.find_by(slug: 'human')
human.name = 'Nickname generator for Human'
human.title = 'Nickname generator for Human, roleplay nicknames generator for human in world of warcraft'
human.content = 'Human race is one of the oldest in Azeroth. Many humans devote their life to serving the Light, magic or become valorous warriors. Human names are typically simple yet bare particular sense. No worries if it will get lost or is non-existent in the first place.'
human.save!

I18n.locale = :ru
pandaren = Race.find_by(slug: 'pandaren')
pandaren.title = 'Генератор ников для Пандаренов(РП ники, генератор roleplay ников и имен, панды)'
pandaren.name = 'Генератор ников для Пандаренов'
pandaren.content = 'Пандарены - древняя раса медведеподобных существ, которые славятся своей приверженностью к пиву, боевым искусствам и самосовершенствованию. Их имена повторяют традиции Востока - каждый слог имеет собственное значение, а если перевести имя пандарена на один из распространенных в Азероте языков, несложно будет оценить всю его красоту.'
pandaren.save!

gnome = Race.find_by(slug: 'gnome')
gnome.title = 'Генератор ников для гномов(РП ники, генератор roleplay ников)'
gnome.name = 'Генератор ников для Гнома'
gnome.content = 'Гномы - искусные механики и инженеры, они обожают мастерить сложные устройства, что нередко приводит к различного масштаба разрушениям. Иногда гномы связывают свою жизнь с магией, что, однако, не мешает звучать их именам так, словно вы потрясли ведро с гайками и болтами.'
gnome.save!

dwarf = Race.find_by(slug: 'dwarf')
dwarf.name = 'Генератор ников для Дворфа'
dwarf.title = 'Генератор ников для дварфов(РП ники, генератор roleplay ников)'
dwarf.content = 'Дворфы появились в Азероте с момента его сотворения. Изначально их раса называлась Земельниками, но эволюция сделала своё дело, и дворфы, кряжистые и несколько грубые создания, стали такими, какими мы знаем их сейчас. Дворфы являются умелыми мастерами горного, кузнечного и пивоваренного дела, поэтому многие из имен связаны с их ремеслом.'
dwarf.save!

nelf = Race.find_by(slug: 'nightelf')
nelf.name = 'Генератор ников для Ночного Эльфа'
nelf.title = 'Генератор ников для Ночных эльфов(РП ники, генератор roleplay ников и имен)'
nelf.content = 'Ночные эльфы - искусные друиды и священники, отличающиеся наибольшей близостью к природе, среди прочих рас. Звучание имен ночных эльфов приятно на слух - тяга этой расы к жизни и гармонии сделала их красивыми и запоминающимися. У эльфов нет бессмысленных имен - каждый звук имеет своё значение.'
nelf.save!

draenei = Race.find_by(slug: 'draenei')
draenei.title = 'Генератор ников для Дренеев (РП ники, генератор roleplay ников и имен)'
draenei.name = 'Генератор ников для Дренеев'
draenei.content = 'Дренеи - раса космических беженцев, хранящая в своих заветах поклонение свету, веру в пророчества и почитание Наару - своих небесных покровителей. Имена дренеев традиционно содержат много гласных, что делает их непривычными для слуха коренных обитателей Азерота.'
draenei.save!

worgen = Race.find_by(slug: 'worgen')
worgen.name = 'Генератор ников для Воргенов'
worgen.title = 'Генератор ников для Воргенов(РП ники, генератор roleplay ников и имен)'
worgen.content = 'Напрасно Генн Седогрив ожидал, что его великая стена спасет народ Гилнеаса от любой опасности. Горькая судьба постигла жителей славного королевства несмотря на все надежды. Любой ворген - в первую очередь бывший представитель гордого королевства Гилнеас, а значит, ему пристало достойное имя. Имя, которое прославит его обладателя, несмотря на его проступающую волчью натуру.'
worgen.save!

human = Race.find_by(slug: 'human')
human.name = 'Генератор ников для Человека'
human.title = 'Генератор ников для людей (человек)(РП ники, генератор roleplay ников)'
human.content = 'Люди - одна из старых рас Азерота. Многие представители человеческой расы посвящают себя служению свету, магии или становятся доблестными воителями. Имена людей как правило просты, но неизменно несут в себе некий смысл. И ничего страшного, что со временем он позабылся или его на самом деле никогда не было.'
human.save!

# Races in english (WoW)
I18n.locale = :en

orc = Race.find_by(slug: 'orc')
orc.name = 'Nickname generator for Orc'
orc.title = 'Nickname generator for Orc, roleplay nicknames generator for orc in world of warcraft'
orc.content = 'Orcs - newcomers from Draenor, nowadays known as Outland. Despite the initial bonds to the spirits of nature, they historically are known as fearless and bloodthirsty warriors. Orcs’ names sound harsh, blunt and without a hinge of harmony or beauty.'
orc.save!

goblin = Race.find_by(slug: 'goblin')
goblin.name = 'Nickname generator for Goblin'
goblin.title = 'Nickname generator for Goblin, roleplay nicknames generator for goblin in world of warcraft'
goblin.content = 'The only explanation goblins are not extinct is their luck and business skills. Most of the race is indeed greedy, they favor both money and explosives. If your companion has a name sounding like Goldexplode - make sure you do not have any deal with him. This maybe risky either for your health, your pocket contents or life expectancy. Or for all at once.'
goblin.save!

undead = Race.find_by(slug: 'undead')
undead.name = 'Nickname generator for Undead (forsaken)'
undead.title = 'Nickname generator for Undead, roleplay nicknames generator for forsaken in world of warcraft'
undead.content = 'Forsaken are the rebellious people of the former Lordaeron. They used to have ordinary human names that may sound old-fashioned. Though this is what adds up the bitterness to existence of faithful Queen banshee followers and reminds of their past - once being a human...'
undead.save!

tauren = Race.find_by(slug: 'tauren')
tauren.name = 'Nickname generator for Tauren'
tauren.title = 'Nickname generator for Tauren, roleplay nicknames generator for tauren in world of warcraft'
tauren.content = 'Taurens are in fact bound to nature as much as Elves are. The root of their traditions is worshiping the Sun, nature and paying respect to their ancestors that gave the endless wisdom to the living ones. Taurens’ names are easyly remembered and simple. Probably that is why they sound nicely, though at times they are belligerent in some way.'
tauren.save!

troll = Race.find_by(slug: 'troll')
troll.name = 'Nickname generator for Troll'
troll.title = 'Nickname generator for Troll, roleplay nicknames generator for troll in world of warcraft'
troll.content = 'Trolls are ancient bloodthirsty race featuring both abiding to their traditions and respect for their ancestors. Trolls have not advanced in technology yet, though still they honor their shamanistic covenants between the sessions of smoking pipe and voodoo talks. Their names may sound rude, yet they are charming as Vol’Jin’s smile.'
troll.save!

bloodelf = Race.find_by(slug: 'bloodelf')
bloodelf.name = 'Nickname generator for Blood Elf'
bloodelf.title = 'Nickname generator for Blood Elf, roleplay nicknames generator for High Elf in world of warcraft'
bloodelf.content = 'Blood Elves - proud, haughty race which ancestors are legendary highest elves. They gravitate to the sun and magic for this reason their names quite often bear in themselves something magic, proud and fearless. Sounding of their names inspires confidence in their firmness and fidelity in ideals of the people.'
bloodelf.save!

# RU
I18n.locale = :ru
orc = Race.find_by(slug: 'orc')
orc.name = 'Генератор ников для Орка'
orc.title = 'Генератор ников для Орков(РП ники, генератор roleplay ников и имен)'
orc.content = 'Орки - пришельцы из мира Драенор, сейчас более известного как Запределье. Несмотря на изначальную приближенность к духам природы, исторически сложилось так, что орки стали известны в качестве кровожадных и неустрашимых воителей. Имя орка звучит грубо, зачастую резко и не отличается гармонией и красотой.'
orc.save!

goblin = Race.find_by(slug: 'goblin')
goblin.name = 'Генератор ников для Гоблинов'
goblin.title = 'Генератор ников для Гоблинов(РП ники, генератор roleplay ников и имен)'
goblin.content = 'То, что гоблины все еще не вымерли, можно объяснить лишь их потрясающей везучестью и свойственной им деловой жилкой. Большинство представителей этой расы оказываются довольно-таки жадными, как до денег, так и до взрывчатки. Если вашего собеседника зовут как-то вроде \"Златовзрыв\" - постарайтесь не иметь с ним дел. Это может оказаться чревато для вашего кошелька, здоровья или жизни. Или - для всего и сразу.'
goblin.save!

undead = Race.find_by(slug: 'undead')
undead.title = 'Генератор ников для нежити и отрекшихся(РП ники, генератор roleplay ников и имен)'
undead.name = 'Генератор ников для Нежити'
undead.content = 'Отрекшиеся - восставшие люди бывшего Лордаерона. В бытность свою людьми они, разумеется, носили человеческие имена, которые сейчас, возможно, звучат слегка старомодно. Однако, это лишь придает существованию верных служителей королевы баньши некоторую горечь, не дающую позабыть об их прошлом - ведь когда-то все они были людьми...'
undead.save!

tauren = Race.find_by(slug: 'tauren')
tauren.name = 'Генератор ников для Таурена'
tauren.title = 'Генератор ников для Тауренов(РП ники, генератор roleplay ников и имен)'
tauren.content = 'Таурены ничуть не меньше ночных эльфов тяготеют к природе. В основе их традиций лежит поклонение солнцу, природе и уважение предков, давших живущим представителям расы свою бесконечную мудрость. Имена тауренов просты и легко запоминаются. Возможно, именно поэтому они звучат довольно приятно, хотя порой несложно распознать и некую воинственность.'
tauren.save!

troll = Race.find_by(slug: 'troll')
troll.name = 'Генератор ников для Тролля'
troll.title = 'Генератор ников для Троллей(РП ники, генератор roleplay ников и имен)'
troll.content = 'Тролли - древняя воинственная раса, отличающася так же и уважением к традициям своего народа. Тролли недалеко продвинулись в технологиях, но чтут заветы своих шаманов, время от времени не забывая раскурить трубочку и поговорить о вуду. Имена троллей звучат порой грубовато, но не лишены некоторого шарма.'
troll.save!

bloodelf = Race.find_by(slug: 'bloodelf')
bloodelf.name = 'Генератор ников для Эльфов Крови'
bloodelf.title = 'Генератор ников для эльфов крови(РП ники, генератор roleplay ников и имен, кровавые эльфы, блад эльфы)'
bloodelf.content = 'Кровавые эльфы - гордая, надменная раса, предками которой являются легендарные высшие эльфы. Они тяготеют к солнцу и магии, именно поэтому их имена нередко несут в себе нечто волшебное, гордое и неустрашимое. Звучание их имен внушает уверенность в их непоколебимости и верности идеалам своего народа.'
bloodelf.save!

Statistic.create!([
  {wow: 210704, gw: 9351, samp: 37413, minecraft: 8135, wow_human: 43455, dwarf: 7457, gnome: 4303, nightelf: 21950, draenei: 16974, worgen: 14223, pandaren: 10843, orc: 16474, troll: 7886, tauren: 9232, undead: 17896, bloodelf: 36469, goblin: 3542, gw_human: nil, asura: 1067, sylvari: 5452, norn: 1532, charr: 1300, english: 19492, german: 4056, french: 4169, italian: 3665, danish: 1524, swedish: 1298, spanish: 3209, steve: 4955, male: 271765, female: 95518, dota: 49250}
])

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
