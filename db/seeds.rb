# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

I18n.locale = :uk

def seed_image(file)
  File.open(File.join(Rails.root, "/app/assets/images/#{file}"))
end

User.create!(
    email: 'admin@example.com',
    password: '12345678'
)

News.create!([
              {
                title: 'Стан будівництва житлового масиву “Паркова Алея”',
                preview_text: 'Стан будівництва житлового масиву “Паркова Алея” станом на 15.03.2017 року. Наведений фотозвіт таких секцій. Секції 11, 12, 13. Секція 16. Секції 17, 18. Секції 19, 20. Секція 26.',
                date: Date.current,
                preview_image: seed_image('news/news-1.png'),
                body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
                news_photos: [
                  NewsPhoto.new(
                    photo: seed_image('news/news-2.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-3.jpg')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-4.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-5.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-6.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-7.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-8.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-9.JPG')
                    )
                ]
              },
              {
                title: 'Зимові знижки!',
                preview_text: 'Зимові знижки!Зимові знижки!Зимові знижки!Зимові знижки!Зимові знижки!Зимові знижки!Зимові знижки!Зимові знижки!.',
                date: Date.current,
                preview_image: seed_image('default.jpeg'),
                body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
                news_photos: [
                  NewsPhoto.new(
                    photo: seed_image('news/news-2.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-3.jpg')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-4.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-5.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-6.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-7.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-8.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-9.JPG')
                    )
                ]
              },
              {
                title: 'Весняні знижки!!!',
                preview_text: 'Весняні знижки!!!Весняні знижки!!!Весняні знижки!!!Весняні знижки!!!Весняні знижки!!!Весняні знижки!!!Весняні знижки!!!Весняні знижки!!!',
                date: Date.current,
                preview_image: seed_image('default.jpeg'),
                body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
                news_photos: [
                  NewsPhoto.new(
                    photo: seed_image('news/news-2.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-3.jpg')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-4.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-5.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-6.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-7.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-8.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-9.JPG')
                    )
                ]
              },
              {
                title: 'Додаткові знижки',
                preview_text: 'Додаткові знижки Додаткові знижки Додаткові знижки Додаткові знижки Додаткові знижки Додаткові знижки Додаткові знижки Додаткові знижки',
                date: Date.current,
                preview_image: seed_image('default.jpeg'),
                body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
                news_photos: [
                  NewsPhoto.new(
                    photo: seed_image('news/news-2.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-3.jpg')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-4.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-5.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-6.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-7.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-8.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-9.JPG')
                    )
                ]
              },
              {
                title: 'Стан будівництва житлового масиву “Паркова Алея”',
                preview_text: 'Стан будівництва житлового масиву “Паркова Алея” станом на 15.03.2017 року. Наведений фотозвіт таких секцій. Секції 11, 12, 13. Секція 16. Секції 17, 18. Секції 19, 20. Секція 26.',
                date: '13.04.2017',
                preview_image: seed_image('default.jpeg'),
                body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
                news_photos: [
                  NewsPhoto.new(
                    photo: seed_image('news/news-2.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-3.jpg')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-4.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-5.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-6.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-7.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-8.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-9.JPG')
                    )
                ]
              },
              {
                title: 'Стан будівництва житлового масиву “Паркова Алея”',
                preview_text: 'Стан будівництва житлового масиву “Паркова Алея” станом на 15.03.2017 року. Наведений фотозвіт таких секцій. Секції 11, 12, 13. Секція 16. Секції 17, 18. Секції 19, 20. Секція 26.',
                date: '12.04.2017',
                preview_image: seed_image('default.jpeg'),
                body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
                news_photos: [
                  NewsPhoto.new(
                    photo: seed_image('news/news-2.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-3.jpg')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-4.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-5.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-6.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-7.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-8.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-9.JPG')
                    )
                ]
              },
              {
                title: 'Стан будівництва житлового масиву “Паркова Алея”',
                preview_text: 'Стан будівництва житлового масиву “Паркова Алея” станом на 15.03.2017 року. Наведений фотозвіт таких секцій. Секції 11, 12, 13. Секція 16. Секції 17, 18. Секції 19, 20. Секція 26.',
                date: '11.04.2017',
                preview_image: seed_image('default.jpeg'),
                body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
                news_photos: [
                  NewsPhoto.new(
                    photo: seed_image('news/news-2.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-3.jpg')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-4.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-5.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-6.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-7.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-8.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-9.JPG')
                    )
                ]
              },
              {
                title: 'Стан будівництва житлового масиву “Паркова Алея”',
                preview_text: 'Стан будівництва житлового масиву “Паркова Алея” станом на 15.03.2017 року. Наведений фотозвіт таких секцій. Секції 11, 12, 13. Секція 16. Секції 17, 18. Секції 19, 20. Секція 26.',
                date: '10.04.2017',
                preview_image: seed_image('default.jpeg'),
                body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
                news_photos: [
                  NewsPhoto.new(
                    photo: seed_image('news/news-2.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-3.jpg')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-4.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-5.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-6.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-7.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-8.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-9.JPG')
                    )
                ]
              },
              {
                title: 'Стан будівництва житлового масиву “Паркова Алея”',
                preview_text: 'Стан будівництва житлового масиву “Паркова Алея” станом на 15.03.2017 року. Наведений фотозвіт таких секцій. Секції 11, 12, 13. Секція 16. Секції 17, 18. Секції 19, 20. Секція 26.',
                date: '08.04.2017',
                preview_image: seed_image('default.jpeg'),
                body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
                news_photos: [
                  NewsPhoto.new(
                    photo: seed_image('news/news-2.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-3.jpg')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-4.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-5.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-6.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-7.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-8.JPG')
                    ),
                  NewsPhoto.new(
                    photo: seed_image('news/news-9.JPG')
                    )
                ]
              }
            ])

Update.create!([
                {
                  title: 'Нові трикамерні склопакети',
                  text: 'Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним.',
                  date: Date.current
                },
                {
                  title: 'Завезли новий вид газону для прилеглої території ',
                  text: '',
                  date: Date.current
                },
                {
                  title: 'Бруківка нового покоління...',
                  text: 'Додаткове утеплення квартири або будинку з метою збереження тепла залишається',
                  date: Date.current
                },
                {
                  title: 'Нові трикамерні склопакети',
                  text: 'Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним.',
                  date: Date.current
                },
                {
                  title: 'Завезли новий вид газону для прилеглої території',
                  text: '',
                  date: Date.current
                },
                {
                  title: 'Завезли новий вид газону для прилеглої території',
                  text: '',
                  date: Date.current
                },
                {
                  title: 'Нові трикамерні склопакети',
                  text: 'Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним.',
                  date: Date.current
                },
                {
                  title: 'Нові чотирикамерні склопакети',
                  text: 'Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним.',
                  date: '10.04.2017'
                },
                {
                  title: 'Нові чотирикамерні склопакети',
                  text: 'Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним.',
                  date: '11.04.2017'
                },
                {
                  title: 'Нові чотирикамерні склопакети',
                  text: 'Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним.',
                  date: '12.04.2017'
                },
                {
                  title: 'Нові чотирикамерні склопакети',
                  text: 'Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним. Додаткове утеплення квартири або будинку з метою збереження тепла залишається досі актуальним.',
                  date: '13.04.2017'
                }

              ])

LocationPhoto.create!([
    {
      photo: seed_image('location-section-bg-first.jpg')
    }
  ])

InfrastructurePhoto.create!([
    {
      name: 'Перше зображення',
      photo: seed_image('infrastructure-section-bg-second-1.png')
    },
    {
      name: 'Друге зображення',
      photo: seed_image('infrastructure-section-bg-second-2.jpg')
    },
    {
      name: 'Третє зображення',
      photo: seed_image('infrastructure-section-bg-second-3.jpg')
    }
    ])

MainSlider.create!([
    {
      first_photo: seed_image('slider/slide-1-1.jpg'),
      second_photo: seed_image('slider/slide-1-2.jpg')
    },
    {
      first_photo: seed_image('slider/slide-2-1.jpg'),
      second_photo: seed_image('slider/slide-2-2.jpg')
    },
    {
      first_photo: seed_image('slider/slide-3-1.jpg'),
      second_photo: seed_image('slider/slide-3-2.jpg')
    },
    {
      first_photo: seed_image('slider/slide-4-1.jpg'),
      second_photo: seed_image('slider/slide-4-2.jpg')
    },
    {
      first_photo: seed_image('slider/slide-5-1.jpg'),
      second_photo: seed_image('slider/slide-5-2.jpg')
    }
    ])

Gallery.create!([
  gallery_photos: [
    GalleryPhoto.new(
      photo: seed_image('news/news-1.png')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-2.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-3.jpg')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-4.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-5.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-6.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-7.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-8.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-9.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-1.png')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-2.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-3.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-1.png')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-2.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-3.jpg')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-4.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-5.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-6.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-7.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-8.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-9.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-1.png')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-2.JPG')
      ),
    GalleryPhoto.new(
      photo: seed_image('news/news-3.JPG')
      )
  ]
  ])

ConstructionCondition.create!([
  {
    title: "Стан будівництва сучасного району 'Manhattan' 12.05.2017",
    date: '12.05.2017',
    body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
    preview_image: seed_image('news/news-3.jpg'),
    construction_condition_photos: [
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-2.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-3.jpg')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-4.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-5.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-6.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-7.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-8.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-9.JPG')
        )
    ]
  },
  {
    title: "Стан будівництва сучасного району 'Manhattan' 22.05.2017",
    date: '22.05.2017',
    body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
    preview_image: seed_image('news/news-2.JPG'),
    construction_condition_photos: [
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-2.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-3.jpg')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-4.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-5.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-6.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-7.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-8.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-9.JPG')
        )
    ]
  },
  {
    title: "Стан будівництва сучасного району 'Manhattan' 12.06.2017",
    date: '12.06.2017',
    body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
    preview_image: seed_image('news/news-4.JPG'),
    construction_condition_photos: [
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-2.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-3.jpg')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-4.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-5.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-6.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-7.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-8.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-9.JPG')
        )
    ]
  },
  {
    title: "Стан будівництва сучасного району 'Manhattan' 22.06.2017",
    date: '22.06.2017',
    body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
    preview_image: seed_image('news/news-5.JPG'),
    construction_condition_photos: [
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-2.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-3.jpg')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-4.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-5.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-6.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-7.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-8.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-9.JPG')
        )
    ]
  },
  {
    title: "Стан будівництва сучасного району 'Manhattan' 12.07.2017",
    date: '12.07.2017',
    body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
    preview_image: seed_image('news/news-6.JPG'),
    construction_condition_photos: [
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-2.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-3.jpg')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-4.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-5.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-6.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-7.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-8.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-9.JPG')
        )
    ]
  },
  {
    title: "Стан будівництва сучасного району 'Manhattan' 22.07.2017",
    date: '22.07.2017',
    body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
    preview_image: seed_image('news/news-7.JPG'),
    construction_condition_photos: [
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-2.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-3.jpg')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-4.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-5.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-6.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-7.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-8.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-9.JPG')
        )
    ]
  },
  {
    title: "Стан будівництва сучасного району 'Manhattan' 12.08.2017",
    date: '12.08.2017',
    body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
    preview_image: seed_image('news/news-8.JPG'),
    construction_condition_photos: [
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-2.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-3.jpg')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-4.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-5.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-6.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-7.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-8.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-9.JPG')
        )
    ]
  },
  {
    title: "Стан будівництва сучасного району 'Manhattan' 15.08.2017",
    date: '15.08.2017',
    body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
    preview_image: seed_image('news/news-2.JPG'),
    construction_condition_photos: [
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-2.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-3.jpg')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-4.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-5.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-6.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-7.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-8.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-9.JPG')
        )
    ]
  },
  {
    title: "Стан будівництва сучасного району 'Manhattan' 16.08.2017",
    date: Date.current,
    body: 'Секції 19-20 Здійснюється монтаж вікон 9-11поверхів. Здійснюється утеплення покрівлі даху. Здійснюється монтаж кабельних ліній та світильників у ліфтових шахтах і машинних відділеннях. Здійснюється влаштування освітлення секцій. Здійснюється влаштування стояків для водопостачання та водовідведення. Секція 19 Здійснюється внутрішнє штукатурення 7-го поверху Секції 17-18 Здійснюється цегляна кладка 6-го поверху. Секція 16 Розпочато цегляну кладку 2-го поверху.',
    preview_image: seed_image('news/news-9.JPG'),
    construction_condition_photos: [
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-2.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-3.jpg')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-4.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-5.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-6.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-7.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-8.JPG')
        ),
      ConstructionConditionPhoto.new(
        photo: seed_image('news/news-9.JPG')
        )
    ]
  }
  ])
