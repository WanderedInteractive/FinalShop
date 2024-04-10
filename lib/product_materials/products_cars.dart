class Cars{
  int id;
  String name;
  String photo;
  String complex;
  double cost;
  String description;
  List images;  
  List characters;
  String videopath;
  Cars(this.id, this.name, this.photo, this.complex, this.cost, this.description ,this.images, this.characters, this.videopath);
}

List<Cars> Favorite = [];
List<Cars> Shopping = [];
List<Cars> productList = [
  Cars(1, 'Lada (ВАЗ) Largus, 2020', 'https://avatars.mds.yandex.net/get-autoru-vos/11800037/4f7669d4deb158106e584a0607e5f03f/456x342n', 'Based', 978140, 'LADA Largus — гармония стиля и практичности. Тот самый случай, когда крупный вместительный автомобиль выглядит легким и стремительным. Фирменный дизайн решетки радиатора и бампера, аэродинамичная форма зеркал, комбинация черного пластика и металлического глянца — модный и фотогеничный Largus придется по вкусу всей семье. Ведь этот просторный универсал создан для того, чтобы нравиться.', ['https://avatars.mds.yandex.net/get-autoru-vos/2163155/76978194fbc02dd0bd459a88ed464859/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/11789197/8c87cea95cf7555d2e2707016fe49edf/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/4290540/b102bc6090ff8a7e81bea6d91ca5df52/1200x900n'], ['1276 см³', '96 л. с.', 'Бензиновый', 'Универсал', 'Механическая'], 'https://youtu.be/NxsZ-OrU1jA'),
  Cars(2, 'Lada (ВАЗ) Vesta, 2019', 'https://avatars.mds.yandex.net/get-autoru-vos/5233445/0535a36b5dbe0b0f07ad240fcccfc759/1200x900n', 'Based', 1165700, 'Семейство российских автомобилей среднего класса, выпускаемых АвтоВАЗом с 25 сентября 2015 года в кузове седан, и с 2017 года в кузове универсал. Головной моделью семейства является седан, носящий по отраслевой нормали ОН 025270-66 LADA-2180. Самый продаваемый автомобиль в России в 2018 и 2021 годах. ', ['http://avatars.mds.yandex.net/get-autoru-vos/2163591/485519033d0cba9c6150ab3f33d1448c/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/2161436/a39b26a7d59d7a64d855d21bc787cc88/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/11836446/bc2eb59842aaa2913f9ed37b1ce0c019/1200x900n'], ['1568 см³','106 л.с.','Бензиновый','Универсал','Автомат'], 'https://youtu.be/inuCkvi0mYQ' ),
  Cars(3, 'УАЗ Patriot, 2017', 'https://yastatic.net/naydex/autoru/kj13cc468/3211f7p8/jnsGII1DymLKg4Rck4VLddj_2ehScY-eri9YGl6jnfB4ovonioiDyPZ-fL6Lc8b7_8jOu88Urvaef2AcaWrOmF4_A0RNR85jvzOAOGJ1T2CNi1gJN7XObj2N7thd0S_ye2RZ1ZutJw03GkioXcM2Dk_NabxMA9qRW4tjbTxrzLr-O8aRDEGoNBtAl1iwhBu1OSzdqoADaf5N7x1q3rCvYsmW-CYaPRQ9UPg6mzy3Rs7tLVntfDM5s2s7cp7fSi44TUokk', 'Based', 653289, 'Полноприводный автомобиль повышенной проходимости для эксплуатации на дорогах всех категорий, а также по пересечённой местности. Представляет собой IV поколение автомобилей повышенной проходимости ГАЗ/УАЗ, является рестайлинговой модификацией модели УАЗ-3162 и «преемником» модели УАЗ-469 - серийно выпускается Ульяновским автозаводом с августа 2005 года. Автомобиль оснащён цельнометаллическим пятидверным кузовом и предназначен для эксплуатации на дорогах всех категорий, а также в сельской местности.', ['https://avatars.mds.yandex.net/get-autoru-vos/9772983/59ea9f65fa36cbdbc0d90ce616f1af86/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/11368337/3d3a36c8b8ccdfe07d13b79bf3b36091/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/6449906/e65d3c6fa0504a3bffe7aa332832656a/1200x900n'], [' 2693 см³','128 л. с.','Бензиновый','Универсал','Механическая'], 'https://youtu.be/n7H1nJGlUmg'),
  Cars(4, 'УАЗ Hunter 315195, 2016', 'https://avatars.mds.yandex.net/get-autoru-vos/11402504/ee4518ba1dbca4c38846690691049e82/1200x900n', 'Based', 1157800, 'Lada Vesta SW Cross 2018 - это универсальный автомобиль с ярким и динамичным дизайном. Он сочетает в себе просторный семейный универсал с элементами кроссовера, что делает его идеальным выбором для активного образа жизни. Vesta SW Cross оснащен мощным и экономичным 1,6-литровым двигателем, который обеспечивает плавное и комфортное движение на дороге. Кроме того, автомобиль оснащен передним приводом и 6-ступенчатой коробкой передач, что делает его отличным выбором для городской езды. Интерьер Vesta SW Cross выполнен в стильном и современном дизайне, с комфортабельными сиденьями и просторным багажником, что делает его отличным выбором для поездок на длительные расстояния или для перевозки больших грузов. В целом, Lada Vesta SW Cross 2018 - это отличный выбор для тех, кто ищет надежный и универсальный автомобиль с современным дизайном и хорошей проходимостью.', ['https://avatars.mds.yandex.net/get-autoru-vos/1567646/fc29e7abac520c779e9133786ce7af10/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/2048563/b8b3b685b3c899c3c742cb1e3bd19d46/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/1581437/8531b28b55d24ff9df536d163b9ca57b/1200x900n'], ['1774 см³','122 л.с.','Бензиновый','Универсал','Роботизированная'], 'https://youtu.be/_wbF5maBW2o'),
  Cars(5, 'Lada (ВАЗ) Vesta, 2022', 'https://avatars.mds.yandex.net/get-autoru-vos/2167678/e3d9c6b5becd8710f3b7f20682427055/1200x900n', 'Comfort', 1586630, 'Lada Vesta 2022 - это компактный седан от российского производителя автомобилей ВАЗ. Модель Vesta представляет собой стильный и современный автомобиль с привлекательным дизайном и хорошей управляемостью. В 2022 году Lada Vesta обзавелась обновленным дизайном, улучшенной отделкой салона и более технологичными функциями. Автомобиль оснащен новейшими системами безопасности и комфорта, включая камеры заднего вида, системы помощи при парковке и технологию поддержки управления. Lada Vesta 2022 предлагает различные варианты двигателей, включая бензиновые и газобензиновые, а также варианты коробок передач, что позволяет выбрать оптимальную конфигурацию под свои потребности. Эта машина идеально подходит для городской езды и долгих поездок благодаря своей экономичности и надежности.', ['https://avatars.mds.yandex.net/get-autoru-vos/2167678/1da5b630add93a8c35f402cab518ddbd/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/6272922/62b9bb4817bafb67dfa2490576d8a22e/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/10932694/f235d18a372a3d398be1a5527fab7933/1200x900n'], ['1596 см³','113 л.с.','Бензиновый','Седан','Вариатор'], 'https://youtu.be/m_BFkPUhmF0'),
  Cars(6, 'Lada (ВАЗ) Priora, 2010', 'https://avatars.mds.yandex.net/get-autoru-vos/11386586/14f50c64ae6dd32777397b8f0a625b14/1200x900n', 'Based', 309710, 'Lada (ВАЗ) Priora - это компактный семейный автомобиль, производимый российским автопроизводителем Волжский автомобильный завод (ВАЗ). Модель Priora была представлена в 2007 году и с тех пор стала одной из самых популярных моделей бренда Lada. Автомобиль оснащается 1,6-литровым бензиновым двигателем мощностью 98 л.с. или 1,8-литровым двигателем мощностью 122 л.с. В зависимости от комплектации, Priora может быть с задним или передним приводом. Lada Priora отличается надежностью, простотой в обслуживании и доступной стоимостью. Внутри салона автомобиля комфортно могут разместиться 5 пассажиров, а багажное отделение вмещает до 430 литров груза. Благодаря умеренной жесткости подвески и отличной управляемости, Priora отлично справляется с городскими условиями и долгими поездками. Lada Priora - это простой, надежный и экономичный автомобиль, который пользуется популярностью среди тех, кто ищет недорогой и функциональный вариант для повседневного использования.', ['https://avatars.mds.yandex.net/get-autoru-vos/11789197/f656962acf967b22b677e3ddac6e1e0f/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/11387356/15ecf1033fca8bbb241171a20e73b2f3/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/11386586/10e37cf1ed98e9c9bb0ea3302c6abfc0/1200x900n'], ['1596 см³','98 л.с.','Бензиновый','Хэтчбек','Механическая'], 'https://youtu.be/isXeziBHQCo'),
  Cars(7, 'Lada (ВАЗ) 2121 (4x4) Urban, 2017', 'https://avatars.mds.yandex.net/get-autoru-vos/1863406/cc2a4ebdaeacfdbd58d22dbdd1c616ce/1200x900n', 'Classic ', 923500, 'Lada Niva Legend 2023 - это современная версия легендарного внедорожника от российской автомобильной марки Lada. Этот автомобиль сочетает в себе непревзойденные возможности проходимости с комфортом и современными технологиями. Niva Legend оснащена мощным и надежным двигателем, который обеспечивает отличную проходимость в любых условиях. Внутри автомобиля просторный и удобный салон, оборудованный современными системами комфорта и безопасности. Дизайн Niva Legend сочетает в себе стиль и практичность, делая этот автомобиль привлекательным как для городских улиц, так и для бездорожья. Благодаря своей надежности и долговечности, Lada Niva Legend 2023 станет отличным выбором для тех, кто ищет надежный и универсальный внедорожник.', ['https://avatars.mds.yandex.net/get-autoru-vos/1907895/60a479680224c8b22aa447058c434182/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/1933512/df57b86e0a39e9143aef9941f9612c93/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/1887621/1c0f6b7fd2efbb558972ad4dfeee06e6/1200x900n'], ['1690 см³','83 л.с.','Бензиновый','Внедорожник','Механическая'], 'https://youtu.be/TqY_BDw9oSQ'),
  Cars(8, 'Lada (ВАЗ) Largus Cross, 2020', 'https://yastatic.net/naydex/autoru/kj13cc468/3211f7p8/jnsGII1DymLKg4Rck4VLddj_2ehScY-eri9YGl6jnfB4ovonioiDWLaOXJ6bs8bLKqiu689BfoOLSlUsaVrrrT5fM1GNF45jShPVXVI1D2CNi1gJN7XObj2N7thd0S_ye2RZ1ZutJw03GkioXcM2Dk_NabxMA9qRW4tjbTxrzLr-O8aRDEGoNBtAl1iwhBu1OSzdqoADaf5N7x1q3rCvYsmW-CYaPRQ9UPg6mzy3Rs7tLVntfDM5s2s7cp7fSi44TUokk', 'Classic ', 923500, 'Lada Niva Legend 2023 - это современная версия легендарного внедорожника от российской автомобильной марки Lada. Этот автомобиль сочетает в себе непревзойденные возможности проходимости с комфортом и современными технологиями. Niva Legend оснащена мощным и надежным двигателем, который обеспечивает отличную проходимость в любых условиях. Внутри автомобиля просторный и удобный салон, оборудованный современными системами комфорта и безопасности. Дизайн Niva Legend сочетает в себе стиль и практичность, делая этот автомобиль привлекательным как для городских улиц, так и для бездорожья. Благодаря своей надежности и долговечности, Lada Niva Legend 2023 станет отличным выбором для тех, кто ищет надежный и универсальный внедорожник.', ['https://avatars.mds.yandex.net/get-autoru-vos/1907895/60a479680224c8b22aa447058c434182/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/1933512/df57b86e0a39e9143aef9941f9612c93/1200x900n','https://avatars.mds.yandex.net/get-autoru-vos/1887621/1c0f6b7fd2efbb558972ad4dfeee06e6/1200x900n'], ['1690 см³','83 л.с.','Бензиновый','Внедорожник','Механическая'], 'https://youtu.be/TqY_BDw9oSQ'),

];

class User{
  int id;
  String lastname;
  String firstname;
  String Email;
  String Phone;
  String Photo;

  User(this.id,this.lastname, this.firstname, this.Email, this.Phone, this.Photo);
}

List<User> Useris = [
 User(1, 'Тестов', 'Сергей', 'seregatester@mail.russiavpered', '+79562561243', 'https://kartinki.pics/uploads/posts/2022-03/1648048168_2-kartinkin-net-p-kartinki-litsa-cheloveka-2.jpg')

];
