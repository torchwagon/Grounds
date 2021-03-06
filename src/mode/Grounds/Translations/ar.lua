		ar = {
			grounds = {
				[0] = {"خشب","?","?"},
				[1] = {"جليد","تزيد من سرعتك عند الضغط على زر المسطرة","يزيد من السرعة ب <BL>%s%%</BL>"},
				[2] = {"الترامبولين","?","?"},
				[3] = {"الحمم","تنقلك إلى الأرضية التي لديها اَخر رقم في الـ Z","?"},
				[4] = {"الشوكولاته","?","?"},
				[5] = {"الأرض","?","?"},
				[6] = {"العشب","?","?"},
				[7] = {"الرمل","تصنع عاصفة رملية","يقلل من العاصفة ب <BL>%s%%</BL>"},
				[8] = {"غيمة","تجعلك تطير عن طريق الضغط على زر المسطرة","يزيد من الطيران ب <BL>%s%%</BL>"},
				[9] = {"المياه","تغرقك","يغرقك <BL>%s%%</BL> ببطئ"},
				[10] = {"الحجارة","تصنع حاجو من الحجارة عن طريق الضغط على زر المسطرة","يزيد من حجم الارضية ب <BL>%s%%</BL>"},
				[11] = {"الثلج","تطلق كرات ثلجية عن طريق الضغط على زر المسطرة","يزيد من سرعة كرة الثلج ب <BL>%s%%</BL>"},
				[12] = {"مستطيل","كل لون له قوته الخاصة","?",{
					["C90909"] = "يقتلك",
					["18C92B"] = "إعادة الحياة إلى جميع أعدائك",
					["555D77"] = "نقطة العودة للحياة",
				}},
				[13] = {"الدائرة","كل لون له قوته الخاصة","?"},
				[14] = {"الإختفاء","?","?"},
				[15] = {"شبكة العنكبوت","تنقلك إلى نقطة البداية","?"},
			},
			-- *
			
			welcome = "مرحبا إلى #%s! هل يمكنك أن تكون أسرع فأر يستعمل قوى الأرض؟ قم بتجربتها!\n<PS>اضغط على الزر H لمعرفة المزيد!",
			developer = "مبرمجة من قبل %s",
			
			shop = {
				coin = "النقود",
				power = "طاقة الارضية",
				upgrade = "ترقية",
				price = "ترقبة السعر",
				close = "اغلاق",
			},
			bought = "لقد قمت بإستعمال %s من النقود من أجل الأرضية %s!",
			cantbuy = "لا تملك النقود الكافية لشراء هذا! :(",
			
			profile = "لائحة المتقدمين : %s\n\n<N>الجولات : %s\n<N>المناصب : %s\n\n<N>الموت : %s\n\n<N>نقود المتجر : %s",
			
			gotcoin = "لقد حصلت على %s نقود! :D",
			zombie = "أصبحت الأن ميت حي!",
			countstats = {
				mice = "تحتاج الاقل ل 5 فئران لاحصائيات الاعتماد",
				tribe = "الاحصائيات لا تحسب بمنزل القبيلة"
			},
			
			powersenabled = "تم تفعيل قوى الأرض! حظا موفقا!",
			-- *
			
			language = "اللغة الحالية : <J>%s",
			
			password = {
				on = "جديدة سر كلمة : %s",
				off = "السر كلمة تعطيل!"
			},
			
			commands = {
				shop = "المتجر",
				profile = "لاعب",
				help = "المساعدة",
				langue = "اللغة",
				leaderboard = "مراكز",
				info = "معلومة",
				pw = "password",
			},
			
			menu = {
				[1] = {"%s","\tما عليك فعله في هذه اللعبة هو جمع الجبن بأسرع ما يمكن يمكنك إستخدام القوى التي  توفرها لك الأرضيات."},
				[2] = {"Submodes","%s\n<J>You may also like to play\n%s"},
				[3] = {"تأثيرات الأراضي","أنقر على إسم الأرضية لمعرفة المزيد عنها\n\n%s"},
				[4] = {"الأوامر",{
					[1] = {"\t<J>» اللاعب</J>\n",{
						[1] = "<VP>!%s</VP> <PS>إسم اللاعب</PS> <R>أو</R> <VP>زر P</VP> - لفتح الملف الشخصي!",
						[2] = "<VP>!%s</VP> <R>أو</R> <VP>الزر O</VP> - لفتح المتجر!",
						[3] = "<VP>!%s</VP> - لتغيير اللغة!\n",
					}},
					[2] = {"\t<J>» البقية</J>\n",{
						[1] = "<VP>!%s</VP> <R>أو</R> <VP>الزر H</VP> - لقتح لائحة المساعدة!",
						[2] = "<VP>!%s</VP> - فتح قائمة المراكز!",
						[3] = "<VP>!%s</VP> - فتح المساعدة وفقا للمكان الذي انت عليه!",
						[4] = "<VP>!%s</VP> - يعرض معلومات الخريطة إذا كانت في دوران",
					}},
					[3] = {"\n\t<J>» مشرف غرفة</J>\n",{
						[1] = "<VP>!%s</VP> <PS>سر كلمة</PS> - إضافة أو إزالة كلمة مرور في الغرفة!",
					}},
				}},
				[5] = {"الخرائط","<J>الخرائط : %s\n\n\tتفعيل %s وأرسل الخارطة. لا تنسى قراءة القوانين!"},
				[6] = {"شكرا لـ","<R>%s <G>- <N>المبرمج\n%s <G>- <N>مترجمون\n%s <G>- <N>مقيموا الخرائط"},
			},
			-- *
		},
