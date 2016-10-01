Admin.delete_all
Admin.create!([
  {name: "Saumil", email: "andrew@andrew.com", password: "pass123", encrypted_password: "e59c536302de7d04ab9b11f18683ab9fe8a33fe76f480e97cd8f4648ed9de78f", salt: "c2957b150618937fed2c5de6450e548adb902440ddced5b643bb52f41f666bd7"},
  {name: "Krunal", email: "kj@gmail.com", password: "123456", encrypted_password: "81f3f5a8eae721d6ce143ea9c763d3b47a907107acec23f3b5de7b810b90b700", salt: "e1b199fea69a1633d38692dda3b5afbfbe24f2dbea35130b90013132373443bb"},
  {name: "New Admin", email: "admin@ncsu.edu", password: "welcome", encrypted_password: "acdc61c18494a0ed65f1817c67f19ec37197055568c9fa4644504af7ec74f0d0", salt: "9a6d268e35aed6bf5df4edb511881380de27f75ea01b84701c5b23c321136ced"},
  {name: "New Admin2", email: "admin2@ncsu.edu", password: "welcome", encrypted_password: "988bdd6924c9deee8f738ea9a3996c03ee8609f89fda40f9228d61425e71b7aa", salt: "cacedaf73a02d4333b7950c46bbef1a92f1ae74574f9bf0ebb7dadca800b0b3b"},
  {name: "Admin 1", email: "adm@gmail.com", password: "12345678", encrypted_password: "b5d4703713e82b7d9c6db9ab42e934224a595df8a88cf4bb5a1002d9e3546b0b", salt: "de1711dd07801af646e6eac2ea159b66918a7849f2a86fad58bf5340422de274"},
  {name: "Ken Tate", email: "ktate@testncsu.com", password: "welcome", encrypted_password: "3774ee3b05bd78ae97c67c1ad1facc57d35bc2397cdd1bb4c65cd55d56248377", salt: "6ec7ff16095ef64067a987db4e1034da967b8623c17f88a798ad960f0e47b9b0"}
])
Category.delete_all
Category.create!([
  {category: "Computer Science"}
])
Employer.delete_all
Employer.create!([
  {emp_name: "Google", contact_person: "Mike", email: "andrew@andrew.com", password: "pass123", encrypted_password: "d3ac06f992ebf89a51ddaef4d9f1187b079f713018f888ad3c7808392ec603b6", salt: "aa7046d88e7bc86f76d3834ca3cbcf6b40f3238c0553bfa15b3f633be0966ab7"},
  {emp_name: "Google", contact_person: "Larry Page", email: "lpage@google.com", password: "welcome", encrypted_password: "f078b5522eb87a06ac8776b6dcb5dc97034d122dcdcbdd1f0e4369f3ba67f44a", salt: "9bf90af85c999657cce61198b3dea368a7b479afb79bef38bd5e2bef5bb2e2c7"},
  {emp_name: "Microsoft", contact_person: "Bill Gates", email: "bgates@microsoft.com", password: "welcome", encrypted_password: "19cc8e6f1b8fe42078fe00be3366a2d8ca9bb12f734f6905a8f20f8bf5f2912c", salt: "85abb024c2e3948df09f0b53b155c8bf9dc7766e1e202990365cd9f0d56cb79b"},
  {emp_name: "Burger King", contact_person: "Mc Donalds", email: "bg@king.com", password: "12345678", encrypted_password: "a00892219a124f19ac5c6894a9a9870fdded8ff35ae2250c7dc24a883197c0fc", salt: "6591b5dc9d308278290546d3fb32b901444deb4eaff9d6c1896f0c409fa603db"},
  {emp_name: "Facebook", contact_person: "Mark", email: "fb@book.com", password: "12345678", encrypted_password: "a35961bd8c705896a3017154c973a1e86940cf393c2f7f03bf3f2ded0022cb90", salt: "0ead88fd2541651a59df99ca41ba951bad626fb311d33c4ebc83adfd1d42cffb"},
  {emp_name: "Amazon", contact_person: "Jeff Bezos", email: "jbezos@testncsu.com", password: "welcome", encrypted_password: "3dcb69cf4fa3856c60621c041e5c781d9f91795bd2aa855e4d9eafe7bdc0abee", salt: "1a2b354363248c440c5ea652a88cd7bc52464befaf96e7434031f7a5a1e6379d"}
])
Job.delete_all
Job.create!([
  {job_ID: "12345", emp_name: "Google", title: "SDE", description: "C++ and C#", tags: "Intern", deadline: "2014-10-10", category: "Computer Science", public: "1"},
  {job_ID: "12", emp_name: "Google", title: "SDE", description: "php", tags: "Intern", deadline: "2014-01-01", category: "Computer Science", public: "0"},
  {job_ID: "JB_1", emp_name: "BurgerKing", title: "Counter Manager", description: "Need a Counter Manager", tags: "Intern, Counter, Manager, NCSU", deadline: "2014-12-12", category: "Banking", public: "1"},
  {job_ID: "JB_2", emp_name: "Google", title: "Network Engineer", description: "Need a Network Engineer", tags: "Full Time, Network, Engineer", deadline: "2014-12-14", category: "Computer Science", public: "0"},
  {job_ID: "JB_1", emp_name: "BurgerKing", title: "Counter Manager", description: "Need a Counter Manager", tags: "Intern, Counter, Manager, NCSU", deadline: "2014-12-12", category: "Banking", public: "1"},
  {job_ID: "JB_1", emp_name: "Burger King", title: "Counter Manager", description: "Need a Counter Manager", tags: "Intern, Counter, Manager, NCSU", deadline: "2014-12-12", category: "Banking", public: "1"},
  {job_ID: "JB_2", emp_name: "Burger King", title: "Network Engineer", description: "Need a Network Engineer", tags: "Full Time, Network, Engineer", deadline: "2014-12-12", category: "Computer Science", public: "0"},
  {job_ID: "Jb_3", emp_name: "Facebook", title: "Java Developer", description: "Java Developer Needed.", tags: "Java Developer, Designer Intern", deadline: "2014-12-12", category: "Computer Science", public: "1"},
  {job_ID: "Jb_4", emp_name: "Facebook", title: "Network Engineer", description: "Network engineer needed", tags: "Network Full Time, Engineer", deadline: "2014-12-14", category: "Computer Science", public: "0"},
  {job_ID: "Recommendation Check", emp_name: "Facebook", title: "Check", description: "Checking Recommedations", tags: "Network, Full, Time, Engineer, Intern, Java, Ruby", deadline: "2014-12-14", category: "Computer Science", public: "1"},
  {job_ID: "2", emp_name: "Amazon", title: "Software Engineer", description: "Entry level position", tags: "Intern", deadline: "2014-10-30", category: "Engineering", public: "1"},
  {job_ID: "2", emp_name: "Amazon", title: "Senior Soft. Engieer", description: "higher level position", tags: "Full TIme", deadline: "2014-09-30", category: "", public: ""}
])
Jobapplication.delete_all
Jobapplication.create!([
  {job_ID: "12345", emp_name: "Google", email: "sg@gmail.com", status: "Not A Fit", tags: "Intern"},
  {job_ID: "12345", emp_name: "Google", email: "sgbfly@gmail.com", status: "Pending", tags: "Intern"},
  {job_ID: "12345", emp_name: "Google", email: "sgbfly@gmail.com", status: "Pending", tags: "Intern"},
  {job_ID: "12345", emp_name: "Google", email: "mark@gmail.com", status: "Pending", tags: "Intern"},
  {job_ID: "Jb_3", emp_name: "Facebook", email: "jbs1@gmail.com", status: "Not A Fit", tags: "Intern, Java, Ruby, Network"},
  {job_ID: "Recommendation Check", emp_name: "Facebook", email: "jbs1@gmail.com", status: "Future Interview", tags: "Intern, Java, Ruby, Network"}
])
User.delete_all
User.create!([
  {name: "Saumil", email: "andrew@andrew.com", password: "pass123", encrypted_password: "b6227ebde66d35e7fe24d609be9d58bead7db3b7f56d0434062b39ee6974e987", salt: "6972217ecf216ff49b7b9e1650ceef7732aebf4bf223e83604c871fffc7f7c3f", phone_no: "919-423-9508", skills: "C#, AWS", resume: "Git", coverLetter: ""},
  {name: "Shrenik", email: "sg@gmail.com", password: "pass123", encrypted_password: "dfc397d8fbc41fd23306d9eec66016339b5edae7fa7f46b2d801212481328d96", salt: "8300f10b89d9873dac22c23fb85f6807d79cce4f8d4e86aed4d3fb8281cb2663", phone_no: "22222222222", skills: "Web development", resume: "Java.Jscript", coverLetter: "Dear Sir"},
  {name: "Mark", email: "mark@gmail.com", password: "pass123", encrypted_password: "eca55c926683f9db59ec8e1fb2936c86f8e5e36a34b245ae746a2746cbd51e02", salt: "ecd3bf6d7cad3b85b72ea879c5a3e8a6ce562208939b465b5789777d8a8fbd42", phone_no: "919-423-9409", skills: "C#", resume: "C++ Skills", coverLetter: "5 years Work Expereince"},
  {name: "Job Seeker 1", email: "jbs1@gmail.com", password: "pass123", encrypted_password: "1348cf076d6146c78c9425646dad17b37a404fb638b42d0c9318d237462eb026", salt: "a49343c95d1146237517e57311006dfc6ea3fbc1bae449242ecc76032d58774b", phone_no: "9191919191", skills: "Java Ruby Matlab C#", resume: "This is Job Seeker 1's resume.", coverLetter: "This is CV"},
  {name: "Humpty Dumpty", email: "hdumpty@testncsu.com", password: "pass123", encrypted_password: "4ce02d68f2767883b452809256b6a1a54b68552c37166370f74b6b465f910536", salt: "42ef58b4a31b7e1d75a4eae89360c02b6f1bd7d6f3d906a76cdd9b299f0c7709", phone_no: "9asd", skills: "java", resume: "Test Resume", coverLetter: ""}
])
