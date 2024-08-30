//
//  animalView_model.swift
//  AnimalCards
//
//  Created by SaikChan on 24/08/2024.
//

import Foundation
import SwiftUI
import AVFoundation

class AnimalViewModel: ObservableObject {
    @Published var animals: [Animal] = [
        Animal(
            name: [.english: "Dog", .thai: "สุนัข", .japanese: "犬", .myanmar: "ခွေး", .mon: "ကၠဵု"],
            soundFileNames: [.english: "dog_en", .thai: "dog_th", .japanese: "dog_jp", .myanmar: "dog_my", .mon: "dog_mon"],
            imageName: "dog"
        ),
		Animal(
            name: [.english: "Cat", .thai: "แมว", .japanese: "猫", .myanmar: "ကြောင်", .mon: "ဗ္ဂဲ"],
            soundFileNames: [.english: "cat_en", .thai: "cat_th", .japanese: "cat_jp", .myanmar: "cat_my", .mon: "cat_mon"],
            imageName: "cat"
        ),
		Animal(
            name: [.english: "Elephant", .thai: "ช้าง", .japanese: "象", .myanmar: "ဆင်", .mon: "စိၚ်"],
            soundFileNames: [.english: "elephant_en", .thai: "elephant_th", .japanese: "elephant_jp", .myanmar: "elephant_my", .mon: "elephant_mon"],
            imageName: "elephant"
        ),
		Animal(
            name: [.english: "Tiger", .thai: "เสือ", .japanese: "虎", .myanmar: "ကျား", .mon: "ကၠ"],
            soundFileNames: [.english: "tiger_en", .thai: "tiger_th", .japanese: "tiger_jp", .myanmar: "tiger_my", .mon: "tiger_mon"],
            imageName: "tiger"
        ),
		Animal(
            name: [.english: "Lion", .thai: "สิงโต", .japanese: "ライオン", .myanmar: "ခြင်္သေ့", .mon: "ဇာဒိသိုၚ်"],
            soundFileNames: [.english: "lion_en", .thai: "lion_th", .japanese: "lion_jp", .myanmar: "lion_my", .mon: "lion_mon"],
            imageName: "lion"
        ),
		Animal(
            name: [.english: "Bear", .thai: "หมี", .japanese: "熊", .myanmar: "ဝက်ဝံ", .mon: "ကၟီကၠိက်"],
            soundFileNames: [.english: "bear_en", .thai: "bear_th", .japanese: "bear_jp", .myanmar: "bear_my", .mon: "bear_mon"],
            imageName: "bear"
        ),
		Animal(
            name: [.english: "Monkey", .thai: "ลิง", .japanese: "猿", .myanmar: "မျောက်", .mon: "ကၞုဲ"],
            soundFileNames: [.english: "monkey_en", .thai: "monkey_th", .japanese: "monkey_jp", .myanmar: "monkey_my", .mon: "monkey_mon"],
            imageName: "monkey"
        ),
		Animal(
            name: [.english: "Horse", .thai: "ม้า", .japanese: "馬", .myanmar: "မြင်း", .mon: "ချေံ"],
            soundFileNames: [.english: "horse_en", .thai: "horse_th", .japanese: "horse_jp", .myanmar: "horse_my", .mon: "horse_mon"],
            imageName: "horse"
        ),
		Animal(
            name: [.english: "Cow", .thai: "วัว", .japanese: "牛", .myanmar: "နွား", .mon: "ဂၠဴ"],
            soundFileNames: [.english: "cow_en", .thai: "cow_th", .japanese: "cow_jp", .myanmar: "cow_my", .mon: "cow_mon"],
            imageName: "cow"
        ),
		Animal(
            name: [.english: "Sheep", .thai: "แกะ", .japanese: "羊", .myanmar: "သိုး", .mon: "ဗ္ၜေံဂလာ"],
            soundFileNames: [.english: "sheep_en", .thai: "sheep_th", .japanese: "sheep_jp", .myanmar: "sheep_my", .mon: "sheep_mon"],
            imageName: "sheep"
        ),
		Animal(
            name: [.english: "Pig", .thai: "หมู", .japanese: "豚", .myanmar: "ဝက်", .mon: "ကၠိက်"],
            soundFileNames: [.english: "pig_en", .thai: "pig_th", .japanese: "pig_jp", .myanmar: "pig_my", .mon: "pig_mon"],
            imageName: "pig"
        ),
		Animal(
            name: [.english: "Rabbit", .thai: "กระต่าย", .japanese: "兎", .myanmar: "ယုန်", .mon: "ဗ္တာဲ"],
            soundFileNames: [.english: "rabbit_en", .thai: "rabbit_th", .japanese: "rabbit_jp", .myanmar: "rabbit_my", .mon: "rabbit_mon"],
            imageName: "rabbit"
        ),
		Animal(
            name: [.english: "Deer", .thai: "กวาง", .japanese: "鹿", .myanmar: "သမင်", .mon: "ဂြာဲ"],
            soundFileNames: [.english: "deer_en", .thai: "deer_th", .japanese: "deer_jp", .myanmar: "deer_my", .mon: "deer_mon"],
            imageName: "deer"
        ),
		Animal(
            name: [.english: "Wolf", .thai: "หมาป่า", .japanese: "狼", .myanmar: "ဝံပုလွေ", .mon: "ကၠဵုကၠိၚ်"],
            soundFileNames: [.english: "wolf_en", .thai: "wolf_th", .japanese: "wolf_jp", .myanmar: "wolf_my", .mon: "wolf_mon"],
            imageName: "wolf"
        ),
		Animal(
            name: [.english: "Fox", .thai: "จิ้งจอก", .japanese: "狐", .myanmar: "မြေခွေး", .mon: "ကၠဵုဂြိုပ်"],
            soundFileNames: [.english: "fox_en", .thai: "fox_th", .japanese: "fox_jp", .myanmar: "fox_my", .mon: "fox_mon"],
            imageName: "fox"
        ),
		Animal(
            name: [.english: "Squirrel", .thai: "กระรอก", .japanese: "リス", .myanmar: "ရှဉ့်", .mon: "ပြိပ်"],
            soundFileNames: [.english: "squirrel_en", .thai: "squirrel_th", .japanese: "squirrel_jp", .myanmar: "squirrel_my", .mon: "squirrel_mon"],
            imageName: "squirrel"
        ),
		Animal(
            name: [.english: "Mouse", .thai: "หนู", .japanese: "ネズミ", .myanmar: "ကြွက်", .mon: "ကၞိ"],
            soundFileNames: [.english: "mouse_en", .thai: "mouse_th", .japanese: "mouse_jp", .myanmar: "mouse_my", .mon: "mouse_mon"],
            imageName: "mouse"
        ),
		Animal(
            name: [.english: "Bat", .thai: "ค้างคาว", .japanese: "コウモリ", .myanmar: "လင်းနို့", .mon: "ကဝ"],
            soundFileNames: [.english: "bat_en", .thai: "bat_th", .japanese: "bat_jp", .myanmar: "bat_my", .mon: "bat_mon"],
            imageName: "bat"
        ),
		Animal(
            name: [.english: "Dolphin", .thai: "ปลาโลมา", .japanese: "イルカ", .myanmar: "လင်းပိုင်", .mon: "ကဗံၚ်ဗှ်ဠဝ်မာ"],
            soundFileNames: [.english: "dolphin_en", .thai: "dolphin_th", .japanese: "dolphin_jp", .myanmar: "dolphin_my", .mon: "dolphin_mon"],
            imageName: "dolphin"
        ),
		Animal(
            name: [.english: "Whale", .thai: "วาฬ", .japanese: "クジラ", .myanmar: "ဝေလငါး", .mon: "ကဗံၚ်ဗှ်"],
            soundFileNames: [.english: "whale_en", .thai: "whale_th", .japanese: "whale_jp", .myanmar: "whale_my", .mon: "whale_mon"],
            imageName: "whale"
        ),
		Animal(
            name: [.english: "Seal", .thai: "แมวน้ำ", .japanese: "アザラシ", .myanmar: "ရေသူပင်လယ်ဖျံ", .mon: "ဖေံဂၚ်ပ္ၚာဍာ်"],
            soundFileNames: [.english: "seal_en", .thai: "seal_th", .japanese: "seal_jp", .myanmar: "seal_my", .mon: "seal_mon"],
            imageName: "seal"
        ),
		Animal(
            name: [.english: "Penguin", .thai: "เพนกวิน", .japanese: "ペンギン", .myanmar: "ပင်ဂွင်း", .mon: "ဂစေံပိန်ဂွေန်"],
            soundFileNames: [.english: "penguin_en", .thai: "penguin_th", .japanese: "penguin_jp", .myanmar: "penguin_my", .mon: "penguin_mon"],
            imageName: "penguin"
        ),
		Animal(
            name: [.english: "Kangaroo", .thai: "จิงโจ้", .japanese: "カンガルー", .myanmar: "သားပိုက်ကောင်", .mon: "သတ်လေၚ်ကောန်"],
            soundFileNames: [.english: "kangaroo_en", .thai: "kangaroo_th", .japanese: "kangaroo_jp", .myanmar: "kangaroo_my", .mon: "kangaroo_mon"],
            imageName: "kangaroo"
        ),
		Animal(
            name: [.english: "Koala", .thai: "โคอาล่า", .japanese: "コアラ", .myanmar: "ကွားလားကောင်", .mon: "ကၟီခါဝ်အလာ"],
            soundFileNames: [.english: "koala_en", .thai: "koala_th", .japanese: "koala_jp", .myanmar: "koala_my", .mon: "koala_mon"],
            imageName: "koala"
        ),
		Animal(
            name: [.english: "Panda", .thai: "แพนด้า", .japanese: "パンダ", .myanmar: "ပန်ဒါဝက်ဝံ", .mon: "ကၟီဖါန်ဒါ"],
            soundFileNames: [.english: "panda_en", .thai: "panda_th", .japanese: "panda_jp", .myanmar: "panda_my", .mon: "panda_mon"],
            imageName: "panda"
        ),
		Animal(
            name: [.english: "Giraffe", .thai: "ยีราฟ", .japanese: "キリン", .myanmar: "သစ်ကုလားအုတ်", .mon: "အုတ်ဍာပ်"],
            soundFileNames: [.english: "giraffe_en", .thai: "giraffe_th", .japanese: "giraffe_jp", .myanmar: "giraffe_my", .mon: "giraffe_mon"],
            imageName: "giraffe"
        ),
		Animal(
            name: [.english: "Zebra", .thai: "ม้าลาย", .japanese: "シマウマ", .myanmar: "မြင်းကျား", .mon: "ချေံဍာပ်"],
            soundFileNames: [.english: "zebra_en", .thai: "zebra_th", .japanese: "zebra_jp", .myanmar: "zebra_my", .mon: "zebra_mon"],
            imageName: "zebra"
        ),
		Animal(
            name: [.english: "Hippo", .thai: "ฮิปโปโปเตมัส", .japanese: "カバ", .myanmar: "ရေမြင်း", .mon: "ချေံဍာ်"],
            soundFileNames: [.english: "hippo_en", .thai: "hippo_th", .japanese: "hippo_jp", .myanmar: "hippo_my", .mon: "hippo_mon"],
            imageName: "hippo"
        ),
		Animal(
            name: [.english: "Rhino", .thai: "แรด", .japanese: "サイ", .myanmar: "ကြံ့", .mon: "သြိတ်"],
            soundFileNames: [.english: "rhino_en", .thai: "rhino_th", .japanese: "rhino_jp", .myanmar: "rhino_my", .mon: "rhino_mon"],
            imageName: "rhino"
        ),
		Animal(
            name: [.english: "Crocodile", .thai: "จระเข้", .japanese: "クロコダイル科", .myanmar: "မိကျောင်း", .mon: "ကျာံ"],
            soundFileNames: [.english: "crocodile_en", .thai: "crocodile_th", .japanese: "crocodile_jp", .myanmar: "crocodile_my", .mon: "crocodile_mon"],
            imageName: "crocodile"
        ),
		Animal(
            name: [.english: "Alligator", .thai: "จระเข้ตีนเป็ด", .japanese: "アリゲーター属", .myanmar: "အယ်လစ်ဂေတာမိကျောင်း", .mon: "ကျာံဇိုၚ်အဒါ"],
            soundFileNames: [.english: "alligator_en", .thai: "alligator_th", .japanese: "alligator_jp", .myanmar: "alligator_my", .mon: "alligator_mon"],
            imageName: "alligator"
        ),
		Animal(
            name: [.english: "Snake", .thai: "งู", .japanese: "蛇", .myanmar: "မြွေ", .mon: "ဇြုံ"],
            soundFileNames: [.english: "snake_en", .thai: "snake_th", .japanese: "snake_jp", .myanmar: "snake_my", .mon: "snake_mon"],
            imageName: "snake"
        ),
		Animal(
            name: [.english: "Lizard", .thai: "จิ้งจก", .japanese: "トカゲ", .myanmar: "အိမ်မြှောင်", .mon: "ဂစက်"],
            soundFileNames: [.english: "lizard_en", .thai: "lizard_th", .japanese: "lizard_jp", .myanmar: "lizard_my", .mon: "lizard_mon"],
            imageName: "lizard"
        ),
		Animal(
            name: [.english: "Turtle", .thai: "เต่า", .japanese: "カメ", .myanmar: "လိပ်", .mon: "အရုတ်"],
            soundFileNames: [.english: "turtle_en", .thai: "turtle_th", .japanese: "turtle_jp", .myanmar: "turtle_my", .mon: "turtle_mon"],
            imageName: "turtle"
        ),
		Animal(
            name: [.english: "Frog", .thai: "กบ", .japanese: "蛙", .myanmar: "ဖား", .mon: "ၚဴ"],
            soundFileNames: [.english: "frog_en", .thai: "frog_th", .japanese: "frog_jp", .myanmar: "frog_my", .mon: "frog_mon"],
            imageName: "frog"
        ),
		Animal(
            name: [.english: "Fish", .thai: "ปลา", .japanese: "魚", .myanmar: "ငါး", .mon: "က"],
            soundFileNames: [.english: "fish_en", .thai: "fish_th", .japanese: "fish_jp", .myanmar: "fish_my", .mon: "fish_mon"],
            imageName: "fish"
        ),
		Animal(
            name: [.english: "Bird", .thai: "นก", .japanese: "鳥", .myanmar: "ငှက်", .mon: "ဂစေံ"],
            soundFileNames: [.english: "bird_en", .thai: "bird_th", .japanese: "bird_jp", .myanmar: "bird_my", .mon: "bird_mon"],
            imageName: "bird"
        ),
		Animal(
            name: [.english: "Chicken", .thai: "ไก่", .japanese: "鶏", .myanmar: "ကြက်", .mon: "စာၚ်"],
            soundFileNames: [.english: "chicken_en", .thai: "chicken_th", .japanese: "chicken_jp", .myanmar: "chicken_my", .mon: "chicken_mon"],
            imageName: "chicken"
        ),
		Animal(
            name: [.english: "Duck", .thai: "เป็ด", .japanese: "鴨", .myanmar: "ဘဲ", .mon: "အဒါ"],
            soundFileNames: [.english: "duck_en", .thai: "duck_th", .japanese: "duck_jp", .myanmar: "duck_my", .mon: "duck_mon"],
            imageName: "duck"
        ),
		Animal(
            name: [.english: "Goose", .thai: "ห่าน", .japanese: "雁", .myanmar: "ဘဲငန်းမ", .mon: "အဟာန်ၝောံ"],
            soundFileNames: [.english: "goose_en", .thai: "goose_th", .japanese: "goose_jp", .myanmar: "goose_my", .mon: "goose_mon"],
            imageName: "goose"
        ),
		Animal(
            name: [.english: "Turkey", .thai: "ไก่งวง", .japanese: "七面鳥", .myanmar: "ကြက်ဆင်", .mon: "စာၚ်စိၚ်"],
            soundFileNames: [.english: "turkey_en", .thai: "turkey_th", .japanese: "turkey_jp", .myanmar: "turkey_my", .mon: "turkey_mon"],
            imageName: "turkey"
        ),
		Animal(
            name: [.english: "Parrot", .thai: "นกแก้ว", .japanese: "オウム", .myanmar: "ကြက်တူရွေး", .mon: "တ္ၚေက်"],
            soundFileNames: [.english: "parrot_en", .thai: "parrot_th", .japanese: "parrot_jp", .myanmar: "parrot_my", .mon: "parrot_mon"],
            imageName: "parrot"
        ),
		Animal(
            name: [.english: "Owl", .thai: "นกฮูก", .japanese: "フクロウ目", .myanmar: "ဇီးကွက်", .mon: "ဂစေံကလော်"],
            soundFileNames: [.english: "owl_en", .thai: "owl_th", .japanese: "owl_jp", .myanmar: "owl_my", .mon: "owl_mon"],
            imageName: "owl"
        ),
		Animal(
            name: [.english: "Eagle", .thai: "อินทรี", .japanese: "鷲", .myanmar: "လင်းယုန်", .mon: "ဂစေံကၟံ"],
            soundFileNames: [.english: "eagle_en", .thai: "eagle_th", .japanese: "eagle_jp", .myanmar: "eagle_my", .mon: "eagle_mon"],
            imageName: "eagle"
        ),
		Animal(
            name: [.english: "Hawk", .thai: "เหยี่ยว", .japanese: "鷹", .myanmar: "သိမ်းငှက်", .mon: "ဂစေံလနေၚ်"],
            soundFileNames: [.english: "hawk_en", .thai: "hawk_th", .japanese: "hawk_jp", .myanmar: "hawk_my", .mon: "hawk_mon"],
            imageName: "hawk"
        ),
		Animal(
            name: [.english: "Vulture", .thai: "ไก่ฟ้า", .japanese: "ハゲタカ", .myanmar: "လင်းတ", .mon: "ကၟာတ်"],
            soundFileNames: [.english: "vulture_en", .thai: "vulture_th", .japanese: "vulture_jp", .myanmar: "vulture_my", .mon: "vulture_mon"],
            imageName: "vulture"
        ),
		Animal(
            name: [.english: "Swan", .thai: "หงส์", .japanese: "ハクチョウ属", .myanmar: "ငန်း", .mon: "အဟာန်"],
            soundFileNames: [.english: "swan_en", .thai: "swan_th", .japanese: "swan_jp", .myanmar: "swan_my", .mon: "swan_mon"],
            imageName: "swan"
        ),
		Animal(
            name: [.english: "Dove", .thai: "นกพิราบ", .japanese: "ハト科", .myanmar: "ချိုးငှက်", .mon: "ဂစေံပူ"],
            soundFileNames: [.english: "dove_en", .thai: "dove_th", .japanese: "dove_jp", .myanmar: "dove_my", .mon: "dove_mon"],
            imageName: "dove"
        ),
		Animal(
            name: [.english: "Seagull", .thai: "นกนางนวล", .japanese: "カモメ亜科", .myanmar: "ဇင်ယော်", .mon: "ဂစေံအဘာ"],
            soundFileNames: [.english: "seagull_en", .thai: "seagull_th", .japanese: "seagull_jp", .myanmar: "seagull_my", .mon: "seagull_mon"],
            imageName: "seagull"
        ),
		Animal(
            name: [.english: "Hummingbird", .thai: "ฮัมมิงเบิร์ด", .japanese: "ハチドリ", .myanmar: "ငှက်ပိတုန်း", .mon: "ဂစေံဇြောတ်ဍာ်ကဴ"],
            soundFileNames: [.english: "hummingbird_en", .thai: "hummingbird_th", .japanese: "hummingbird_jp", .myanmar: "hummingbird_my", .mon: "hummingbird_mon"],
            imageName: "hummingbird"
        ),
		Animal(
            name: [.english: "Kangaroo Rat", .thai: "หนูจิงโจ้", .japanese: "カンガルーネズミ", .myanmar: "သားပိုက်ကြွက်", .mon: "ကၞိလေၚ်ကောန်"],
            soundFileNames: [.english: "kangaroo rat_en", .thai: "kangaroo rat_th", .japanese: "kangaroo rat_jp", .myanmar: "kangaroo rat_my", .mon: "kangaroo rat_mon"],
            imageName: "kangaroo rat"
        ),
		Animal(
            name: [.english: "Platypus", .thai: "ตุ่นปากเป็ด", .japanese: "カモノハシ", .myanmar: "ဘဲတူဖျံတူကောင်", .mon: "ဖေံဂၚ်ပါၚ်အဒါ"],
            soundFileNames: [.english: "platypus_en", .thai: "platypus_th", .japanese: "platypus_jp", .myanmar: "platypus_my", .mon: "platypus_mon"],
            imageName: "platypus"
        ),
		Animal(
            name: [.english: "Otter", .thai: "นาก", .japanese: "カワウソ", .myanmar: "ဖျံ", .mon: "ဖေံ"],
            soundFileNames: [.english: "otter_en", .thai: "otter_th", .japanese: "otter_jp", .myanmar: "otter_my", .mon: "otter_mon"],
            imageName: "otter"
        ),
		Animal(
            name: [.english: "Beaver", .thai: "บีเวอร์", .japanese: "ビーバー", .myanmar: "ဘီဗာရှဉ့်ဝံ", .mon: "ပြိပ်ကၟီဗဳဗါ"],
            soundFileNames: [.english: "beaver_en", .thai: "beaver_th", .japanese: "beaver_jp", .myanmar: "beaver_my", .mon: "beaver_mon"],
            imageName: "beaver"
        ),
		Animal(
            name: [.english: "Hedgehog", .thai: "เม่น", .japanese: "針鼠", .myanmar: "ဖြူကောင်", .mon: "ဗဳလေၚ်"],
            soundFileNames: [.english: "hedgehog_en", .thai: "hedgehog_th", .japanese: "hedgehog_jp", .myanmar: "hedgehog_my", .mon: "hedgehog_mon"],
            imageName: "hedgehog"
        ),
		Animal(
            name: [.english: "Armadillo", .thai: "อาร์มาดิลโล", .japanese: "アルマジロ", .myanmar: "အာမာဒီလိုကောင်", .mon: "အမာဒဳဠဝ်"],
            soundFileNames: [.english: "armadillo_en", .thai: "armadillo_th", .japanese: "armadillo_jp", .myanmar: "armadillo_my", .mon: "armadillo_mon"],
            imageName: "armadillo"
        ),
		Animal(
            name: [.english: "Sloth", .thai: "สลอธ", .japanese: "ナマケモノ", .myanmar: "မျောက်မောင်းမ", .mon: "ကၞုဲသလတ်"],
            soundFileNames: [.english: "sloth_en", .thai: "sloth_th", .japanese: "sloth_jp", .myanmar: "sloth_my", .mon: "sloth_mon"],
            imageName: "sloth"
        ),
		Animal(
            name: [.english: "Anteater", .thai: "ตัวกินมด", .japanese: "アリクイ", .myanmar: "ပုရွက်ဆိတ်စားကောင်", .mon: "သတ်စခၟောတ်"],
            soundFileNames: [.english: "anteater_en", .thai: "anteater_th", .japanese: "anteater_jp", .myanmar: "anteater_my", .mon: "anteater_mon"],
            imageName: "anteater"
        ),
		Animal(
            name: [.english: "Porcupine", .thai: "อันดับย่อยเม่น", .japanese: "ヤマアラシ", .myanmar: "ဖြူ", .mon: "လမၠေၚ်"],
            soundFileNames: [.english: "porcupine_en", .thai: "porcupine_th", .japanese: "porcupine_jp", .myanmar: "porcupine_my", .mon: "porcupine_mon"],
            imageName: "porcupine"
        ),
		Animal(
            name: [.english: "Raccoon", .thai: "แร็กคูน", .japanese: "アライグマ", .myanmar: "ရက်ကွန်းဝံ", .mon: "ကၟီဝါပ်ခှဳ"],
            soundFileNames: [.english: "raccoon_en", .thai: "raccoon_th", .japanese: "raccoon_jp", .myanmar: "raccoon_my", .mon: "raccoon_mon"],
            imageName: "raccoon"
        ),
		Animal(
            name: [.english: "Opossum", .thai: "โอพอสซัม", .japanese: "オポッサム形目", .myanmar: "အိုပေါ့ဆမ်ကောင်", .mon: "လေၚ်ကောန်အာဝ်ပါဝ်သုမ်"],
            soundFileNames: [.english: "opossum_en", .thai: "opossum_th", .japanese: "opossum_jp", .myanmar: "opossum_my", .mon: "opossum_mon"],
            imageName: "opossum"
        ),
		Animal(
            name: [.english: "Skunk", .thai: "สกั๊งค์", .japanese: "スカンク", .myanmar: "နံကောင်", .mon: "သတ်ဇကုပသ"],
            soundFileNames: [.english: "skunk_en", .thai: "skunk_th", .japanese: "skunk_jp", .myanmar: "skunk_my", .mon: "skunk_mon"],
            imageName: "skunk"
        ),
		Animal(
            name: [.english: "Weasel", .thai: "เพียงพอน", .japanese: "イタチ", .myanmar: "မြွေပါမြီးတို", .mon: "ဂၞေဟ်ဗ္တဂၠေံ"],
            soundFileNames: [.english: "weasel_en", .thai: "weasel_th", .japanese: "weasel_jp", .myanmar: "weasel_my", .mon: "weasel_mon"],
            imageName: "weasel"
        ),
		Animal(
            name: [.english: "Ferret", .thai: "เฟร์ริต", .japanese: "フェレット", .myanmar: "မြွေပါကတိုးဖြူ", .mon: "ဂၞေဟ်ဗ္တဂၠေံအရံၚ်ဗု"],
            soundFileNames: [.english: "ferret_en", .thai: "ferret_th", .japanese: "ferret_jp", .myanmar: "ferret_my", .mon: "ferret_mon"],
            imageName: "ferret"
        ),
		Animal(
            name: [.english: "Mongoose", .thai: "มังกี้", .japanese: "マングース科", .myanmar: "မြွေပါ", .mon: "ဂၞေဟ်ဇာတ်"],
            soundFileNames: [.english: "mongoose_en", .thai: "mongoose_th", .japanese: "mongoose_jp", .myanmar: "mongoose_my", .mon: "mongoose_mon"],
            imageName: "mongoose"
        ),
		Animal(
            name: [.english: "Hyena", .thai: "ไฮีน่า", .japanese: "ハイエナ", .myanmar: "ဟိုင်အီးနား", .mon: "ကၠဵုဂြိုပ်ဟာဲအဳနာ"],
            soundFileNames: [.english: "hyena_en", .thai: "hyena_th", .japanese: "hyena_jp", .myanmar: "hyena_my", .mon: "hyena_mon"],
            imageName: "hyena"
        ),
		Animal(
            name: [.english: "Cheetah", .thai: "เสือชีตาห์", .japanese: "チーター", .myanmar: "သစ်ကျုတ်", .mon: "ကၠလှာ"],
            soundFileNames: [.english: "cheetah_en", .thai: "cheetah_th", .japanese: "cheetah_jp", .myanmar: "cheetah_my", .mon: "cheetah_mon"],
            imageName: "cheetah"
        ),
		Animal(
            name: [.english: "Leopard", .thai: "เสือดาว", .japanese: "ヒョウ", .myanmar: "ကျားသစ်", .mon: "ကၠမပၞဟ်"],
            soundFileNames: [.english: "leopard_en", .thai: "leopard_th", .japanese: "leopard_jp", .myanmar: "leopard_my", .mon: "leopard_mon"],
            imageName: "leopard"
        ),
		Animal(
            name: [.english: "Jaguar", .thai: "แจ็กเกอ", .japanese: "ジャガー", .myanmar: "ဂျာဂွာကျားသစ်", .mon: "ကၠမပၞဟ်ဂျေက်ဂွာ"],
            soundFileNames: [.english: "jaguar_en", .thai: "jaguar_th", .japanese: "jaguar_jp", .myanmar: "jaguar_my", .mon: "jaguar_mon"],
            imageName: "jaguar"
        ),
		Animal(
            name: [.english: "Puma", .thai: "พูมา", .japanese: "ピューマ", .myanmar: "ပျူမာတောင်ခြင်္သေ့", .mon: "ၜေအ်မာဇာဒိသိုၚ်ဒဵု"],
            soundFileNames: [.english: "puma_en", .thai: "puma_th", .japanese: "puma_jp", .myanmar: "puma_my", .mon: "puma_mon"],
            imageName: "puma"
        ),
		Animal(
            name: [.english: "Mountain Lion", .thai: "เสือภูเขา", .japanese: "マウンテンライオン", .myanmar: "တောင်ခြင်္သေ့", .mon: "ဇာဒိသိုၚ်ဒဵု"],
            soundFileNames: [.english: "mountain lion_en", .thai: "mountain lion_th", .japanese: "mountain lion_jp", .myanmar: "mountain lion_my", .mon: "mountain lion_mon"],
            imageName: "mountain lion"
        ),
		Animal(
            name: [.english: "Lynx", .thai: "สกุลลิงซ์", .japanese: "オオヤマネコ", .myanmar: "ကြောင်မြီးတို", .mon: "ဗ္ဂဲဗ္တဂၠေံ"],
            soundFileNames: [.english: "lynx_en", .thai: "lynx_th", .japanese: "lynx_jp", .myanmar: "lynx_my", .mon: "lynx_mon"],
            imageName: "lynx"
        ),
		Animal(
            name: [.english: "Wild Boar", .thai: "หมูป่า", .japanese: "イノシシ", .myanmar: "တောဝက်", .mon: "ကၠိက်ဂြိုပ်"],
            soundFileNames: [.english: "wild boar_en", .thai: "wild boar_th", .japanese: "wild boar_jp", .myanmar: "wild boar_my", .mon: "wild boar_mon"],
            imageName: "wild boar"
        ),
		Animal(
            name: [.english: "Bison", .thai: "ไบซัน", .japanese: "バイソン", .myanmar: "အမွေးရှည်နွားရိုင်း", .mon: "ဂၠဴအရိုၚ်တသော်ဂၠိၚ်"],
            soundFileNames: [.english: "bison_en", .thai: "bison_th", .japanese: "bison_jp", .myanmar: "bison_my", .mon: "bison_mon"],
            imageName: "bison"
        ),
		Animal(
            name: [.english: "Yak", .thai: "แยก", .japanese: "ヤク", .myanmar: "စာမရီ", .mon: "ဂၠဴသာမရဳ"],
            soundFileNames: [.english: "yak_en", .thai: "yak_th", .japanese: "yak_jp", .myanmar: "yak_my", .mon: "yak_mon"],
            imageName: "yak"
        ),
		Animal(
            name: [.english: "Camel", .thai: "อูฐ", .japanese: "ラクダ", .myanmar: "ကုလားအုတ်", .mon: "အုတ်"],
            soundFileNames: [.english: "camel_en", .thai: "camel_th", .japanese: "camel_jp", .myanmar: "camel_my", .mon: "camel_mon"],
            imageName: "camel"
        ),
		Animal(
            name: [.english: "Gibbon", .thai: "ชะนี", .japanese: "テナガザル", .myanmar: "မျောက်လွှဲကျော်", .mon: "လၚ်ဟေဝ်"],
            soundFileNames: [.english: "gibbon_en", .thai: "gibbon_th", .japanese: "gibbon_jp", .myanmar: "gibbon_my", .mon: "gibbon_mon"],
            imageName: "gibbon"
        ),
		Animal(
            name: [.english: "Gorilla", .thai: "กอริลลา", .japanese: "ゴリラ", .myanmar: "ဂေါ်ရီးလားမျောက်ဝံ", .mon: "ကၟီမၞိဟ်"],
            soundFileNames: [.english: "gorilla_en", .thai: "gorilla_th", .japanese: "gorilla_jp", .myanmar: "gorilla_my", .mon: "gorilla_mon"],
            imageName: "gorilla"
        ),
		Animal(
            name: [.english: "Chimpanzee", .thai: "ชิมแปนซี", .japanese: "チンパンジー", .myanmar: "ချင်ပန်ဇီမျောက်ဝံ", .mon: "ကၟီမၞိဟ်ချေၚ်ပါန်ဇြဳ"],
            soundFileNames: [.english: "chimpanzee_en", .thai: "chimpanzee_th", .japanese: "chimpanzee_jp", .myanmar: "chimpanzee_my", .mon: "chimpanzee_mon"],
            imageName: "chimpanzee"
        ),
		Animal(
            name: [.english: "Buffalo", .thai: "ควาย", .japanese: "バッファロー", .myanmar: "ကျွဲ", .mon: "ပြေၚ်"],
            soundFileNames: [.english: "buffalo_en", .thai: "buffalo_th", .japanese: "buffalo_jp", .myanmar: "buffalo_my", .mon: "buffalo_mon"],
            imageName: "buffalo"
        ),
		Animal(
            name: [.english: "Sarika bird", .thai: "นกสาริกา", .japanese: "", .myanmar: "သာလိကာ", .mon: "သာရိကာ"],
            soundFileNames: [.english: "sarika bird_en", .thai: "sarika bird_th", .japanese: "sarika bird_jp", .myanmar: "sarika bird_my", .mon: "sarika bird_mon"],
            imageName: "sarika bird"
        ),
		Animal(
            name: [.english: "woodpecker", .thai: "นกหัวขวาน", .japanese: "", .myanmar: "", .mon: "ဂစေံၜံက်ဆု"],
            soundFileNames: [.english: "woodpecker_en", .thai: "woodpecker_th", .japanese: "woodpecker_jp", .myanmar: "woodpecker_my", .mon: "woodpecker_mon"],
            imageName: "woodpecker"
        ),
		Animal(
            name: [.english: "crow", .thai: "อีกา", .japanese: "", .myanmar: "ကျီးကန်း", .mon: "ခ္ဍာ်"],
            soundFileNames: [.english: "crow_en", .thai: "crow_th", .japanese: "crow_jp", .myanmar: "crow_my", .mon: "crow_mon"],
            imageName: "crow"
        ),
		Animal(
            name: [.english: "shrimp", .thai: "กุ้ง", .japanese: "", .myanmar: "ပုဇွန်", .mon: "ၚုဲ"],
            soundFileNames: [.english: "shrimp_en", .thai: "shrimp_th", .japanese: "shrimp_jp", .myanmar: "shrimp_my", .mon: "shrimp_mon"],
            imageName: "shrimp"
        ),
		Animal(
            name: [.english: "shellfish", .thai: "หอย", .japanese: "", .myanmar: "ခရု", .mon: "ကၞ"],
            soundFileNames: [.english: "shellfish_en", .thai: "shellfish_th", .japanese: "shellfish_jp", .myanmar: "shellfish_my", .mon: "shellfish_mon"],
            imageName: "shellfish"
        ),
		Animal(
            name: [.english: "peacock", .thai: "นกยูง", .japanese: "", .myanmar: "ဒေါင်း", .mon: "မြာ်"],
            soundFileNames: [.english: "peacock_en", .thai: "peacock_th", .japanese: "peacock_jp", .myanmar: "peacock_my", .mon: "peacock_mon"],
            imageName: "peacock"
        ),
    ]
    
    @Published var selectedLanguage: Animal.Language = .english
    
    var player: AVAudioPlayer?
    private var speechSynthesize = AVSpeechSynthesizer()
    
    func playSound(for animal: Animal) {
        // Play animal sound if available
        if let soundFileNames = animal.soundFileNames[selectedLanguage],
           let url = Bundle.main.url(forResource: soundFileNames, withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }else{
            // If no sound file, speak the animal's name using speech synthesis
            speak(animalName: getName(for: animal))
        }
    }
    
    func getName(for animal: Animal) -> String {
        return animal.name[selectedLanguage] ?? "Unknow"
    }
    
    private func speak(animalName: String) {
        let utterance = AVSpeechUtterance(string: animalName)
        
        switch selectedLanguage {
        case .english:
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        case .thai:
            utterance.voice = AVSpeechSynthesisVoice(language: "th-TH")
        case .japanese:
            utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        case .myanmar:
            utterance.voice = AVSpeechSynthesisVoice(language: "my-MY")
        case .mon:
            utterance.voice = AVSpeechSynthesisVoice(language: "my-MY")
        }
        
        utterance.rate = AVSpeechUtteranceDefaultSpeechRate
        speechSynthesize.speak(utterance)
    }
}
