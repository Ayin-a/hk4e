--[[======================================
||	filename:       Rogue_Cell
||	owner:          juntao.chen
||	description:    肉鸽每个房间的re(和谐)quire
||	LogName:        Rogue_Cell
||	Protection:     [Protection]
=======================================]]
--[[
    defs.center_point = 111,
	defs.rogue_exit123
]]
local Rogue_Cell = {
    Monster_Pool_Info =
	{
		--丘丘人杂鱼+弓箭手+火斧暴徒+雷斧暴徒
		[33001] = {total_count=12, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--丘丘人杂鱼+萨满+岩盾暴徒+木盾暴徒
		[33002] = {total_count=12, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--丘丘人杂鱼+冰萨满+冰盾暴徒
		[33003] = {total_count=12, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--丘丘人杂鱼+草萨满+雷萨满+火暴徒+火法
		[33004] = {total_count=12, min_count=3, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--丘丘人杂鱼+水萨满+风萨满+岩盾暴徒
		[33005] = {total_count=12, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--雷斧暴徒+火斧暴徒+岩盾暴徒
		[33006] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--火史莱姆+爆弹丘丘+火深渊法师
		[33007] = {total_count=6, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--水史莱姆+冰弹丘丘+水深渊法师
		[33008] = {total_count=6, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--雷史莱姆+雷丘丘萨满+雷深渊法师
		[33009] = {total_count=6, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--大冰史莱姆+冰弹丘丘+冰深渊法师
		[33010] = {total_count=6, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--大雷史莱姆+雷深渊法师+雷丘丘王
		[33011] = {total_count=5, min_count=1, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--大岩史莱姆+岩盾丘丘人+岩盔王
		[33012] = {total_count=5, min_count=2, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--大冰史莱姆+冰深渊法师+霜铠王
		[33013] = {total_count=5, min_count=1, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--冰火雷三深渊法师
		[33014] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--冰火水三深渊法师
		[33015] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--雷飘浮灵+水漂浮灵+雷史莱姆+水史莱姆
		[33016] = {total_count=6, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--火飘浮灵+风漂浮灵+火史莱姆
		[33017] = {total_count=6, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--冰飘浮灵+水漂浮灵+冰史莱姆+水史莱姆
		[33020] = {total_count=6, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--独眼小宝+独眼大宝
		[33021] = {total_count=2, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--歼击机关+侦察机关
		[33022] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--巡弋机关+防卫机关
		[33023] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥水+岩龙蜥冰
		[33024] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥火+岩龙蜥雷
		[33029] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--小水龙蜥
		[33030] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--小冰龙蜥+小雷龙蜥
		[33031] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--大深海龙蜥
		[33036] = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--雷小狗
		[33037] = {total_count=8, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--岩小狗
		[33038] = {total_count=8, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--雷大狗
		[33039] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--岩大狗
		[33040] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--火深渊+雷小狗
		[33041] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--水深渊+岩小狗
		[33042] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--纯水之猪+纯水之鼠+纯水之鹤
		[33043] = {total_count=6, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--纯水之鸭+纯水之雀+纯水之蛙
		[33044] = {total_count=5, min_count=3, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥火+火骗骗花
		[33045] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥冰+冰骗骗花
		[33046] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥雷+雷骗骗花
		[33047] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--火咏者+草丘丘萨满+风丘丘萨满
		[33048] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--水使徒+雷丘丘萨满+风丘丘萨满
		[33049] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--雷咏者+水丘丘萨满+风丘丘萨满
		[33050] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--火咏者+火深渊法师
		[33051] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--水使徒+水深渊法师
		[33052] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--雷咏者+雷深渊法师
		[33053] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--愚人众债务处理人+火铳
		[33019] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--愚人众冰铳+冰莹术士
		[33025] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--愚人众雷莹术士+雷锤
		[33027] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--镜女+冰铳+冰莹术士
		[33028] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--火海乱鬼+浪人暗部
		[33032] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--雷海乱鬼+浪人山贼
		[33033] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--愚人众岩使+雷锤+债务处理人
		[33034] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团铲子+火瓶子+水瓶子+空手肌肉男
		[33018] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团船橹+电瓶子+冰瓶子+锤子肌肉男+空手肌肉男
		[33035] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团铲子+冰瓶子+水瓶子+斥候+锤子肌肉男
		[33054] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团船橹+水瓶子+电瓶子+空手肌肉男+锤子肌肉男
		[33055] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团空手胖+火瓶子+电瓶子+斥候+锤子肌肉男
		[33056] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--雷锤+风拳+水铳
		[33057] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--雷莹术士+冰铳
		[33058] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--海乱鬼火+海乱鬼雷
		[33059] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--浪人+浪人暗部+浪人山贼
		[33060] = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--恒常机关阵列
		[33061] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--大小宝rush
		[33062] = {total_count=4, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--遗迹机关rush
		[33063] = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--幼岩龙蜥rush
		[33064] = {total_count=4, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥rush
		[33065] = {total_count=4, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--古岩龙蜥水
		[33066] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--古岩龙蜥火
		[33067] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--古岩龙蜥冰
		[33068] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--古岩龙蜥电
		[33069] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--浪人rush
		[33070] = {total_count=9, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--海乱鬼rush
		[33071] = {total_count=4, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--魔偶剑鬼
		[33072] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--剑鬼三兄弟
		[33073] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--先遣队rush（冰水倾向）
		[33074] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--先遣队rush（雷火倾向）
		[33075] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--债务处理人rush
		[33076] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--藏镜仕女+冰萤术士+雷萤术士rush
		[33077] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--火深渊法师+雷小狗rush
		[33078] = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--水深渊法师+岩小狗rush
		[33079] = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--火咏者rush
		[33080] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--水使徒rush
		[33081] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--火咏者+雷大狗rush
		[33082] = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--水使徒+岩大狗rush
		[33083] = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--火骗骗花rush
		[33084] = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--冰骗骗花rush
		[33085] = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--爆炎树
		[33086] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--急冻树
		[33087] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--无相火
		[33088] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--无相冰
		[33089] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--丘丘人杂鱼+弓箭手+火斧暴徒+雷斧暴徒
		[33090] = {total_count=12, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--雷斧暴徒+火斧暴徒+岩盾暴徒
		[33091] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--独眼小宝+独眼大宝
		[33092] = {total_count=2, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥水+岩龙蜥冰
		[33093] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥火+岩龙蜥雷
		[33094] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--小水龙蜥
		[33095] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--小冰龙蜥+小雷龙蜥
		[33096] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--雷小狗
		[33097] = {total_count=8, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--岩小狗
		[33098] = {total_count=8, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--火深渊+雷小狗
		[33099] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--水深渊+岩小狗
		[33100] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--纯水之猪+纯水之鼠+纯水之鹤
		[33101] = {total_count=6, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--纯水之鸭+纯水之雀+纯水之蛙
		[33102] = {total_count=5, min_count=3, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--火咏者+草丘丘萨满+风丘丘萨满
		[33103] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--水使徒+雷丘丘萨满+风丘丘萨满
		[33104] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--雷咏者+水丘丘萨满+风丘丘萨满
		[33105] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团船橹+电瓶子+冰瓶子+锤子肌肉男+空手肌肉男
		[33106] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团铲子+冰瓶子+水瓶子+斥候+锤子肌肉男
		[33107] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团船橹+水瓶子+电瓶子+空手肌肉男+锤子肌肉男
		[33108] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团空手胖+火瓶子+电瓶子+斥候+锤子肌肉男
		[33109] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--雷锤+风拳+水铳
		[33110] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--雷莹术士+冰铳
		[33111] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--大小宝rush
		[33112] = {total_count=4, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--遗迹机关rush
		[33113] = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--幼岩龙蜥rush
		[33114] = {total_count=4, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥rush
		[33115] = {total_count=4, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--浪人rush
		[33116] = {total_count=9, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--海乱鬼rush
		[33117] = {total_count=4, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--先遣队rush（冰水倾向）
		[33118] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--先遣队rush（雷火倾向）
		[33119] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--债务处理人rush
		[33120] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--火深渊法师+雷小狗rush
		[33121] = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--水深渊法师+岩小狗rush
		[33122] = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--火咏者rush
		[33123] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--水使徒rush
		[33124] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--火骗骗花rush
		[33125] = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--冰骗骗花rush
		[33126] = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--丘丘人杂鱼+萨满+岩盾暴徒+木盾暴徒
		[33127] = {total_count=12, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--丘丘人杂鱼+冰萨满+冰盾暴徒
		[33128] = {total_count=12, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--丘丘人杂鱼+草萨满+雷萨满+火暴徒+火法
		[33129] = {total_count=12, min_count=3, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--丘丘人杂鱼+水萨满+风萨满+岩盾暴徒
		[33130] = {total_count=12, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--火史莱姆+爆弹丘丘+火深渊法师
		[33131] = {total_count=6, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--水史莱姆+冰弹丘丘+水深渊法师
		[33132] = {total_count=6, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--雷史莱姆+雷丘丘萨满+雷深渊法师
		[33133] = {total_count=6, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--大雷史莱姆+雷深渊法师+雷丘丘王
		[33134] = {total_count=5, min_count=1, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--大岩史莱姆+岩盾丘丘人+岩盔王
		[33135] = {total_count=5, min_count=2, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--大冰史莱姆+冰深渊法师+霜铠王
		[33136] = {total_count=5, min_count=1, max_count=4, fill_time=0, fill_count=0, is_ordered = true},

		--冰火雷三深渊法师
		[33137] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--冰火水三深渊法师
		[33138] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--火飘浮灵+风漂浮灵+火史莱姆
		[33139] = {total_count=6, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--盗宝团铲子+火瓶子+水瓶子+空手肌肉男
		[33140] = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true},

		--愚人众债务处理人+火铳
		[33141] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--冰飘浮灵+水漂浮灵+冰史莱姆+水史莱姆
		[33142] = {total_count=6, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--歼击机关+侦察机关
		[33143] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--巡弋机关+防卫机关
		[33144] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--愚人众冰铳+冰莹术士
		[33145] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--愚人众雷莹术士+雷锤
		[33146] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--镜女+冰铳+冰莹术士
		[33147] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--火海乱鬼+浪人暗部
		[33148] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--雷海乱鬼+浪人山贼
		[33149] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--愚人众岩使+雷锤+债务处理人
		[33150] = {total_count=3, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--大深海龙蜥
		[33151] = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--雷大狗
		[33152] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--岩大狗
		[33153] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥火+火骗骗花
		[33154] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥冰+冰骗骗花
		[33155] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--岩龙蜥雷+雷骗骗花
		[33156] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--海乱鬼火+海乱鬼雷
		[33157] = {total_count=2, min_count=1, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--浪人+浪人暗部+浪人山贼
		[33158] = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--藏镜仕女+冰萤术士+雷萤术士rush
		[33159] = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true},

		--火咏者+雷大狗rush
		[33160] = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--水使徒+岩大狗rush
		[33161] = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true},

		--爆炎树
		[33162] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--急冻树
		[33163] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--彩蛋小冰史莱姆
		[33164] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--彩蛋小火史莱姆
		[33165] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--彩蛋小水史莱姆
		[33166] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--彩蛋小雷史莱姆
		[33167] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--彩蛋小岩史莱姆
		[33168] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--彩蛋丘丘人潮
		[33169] = {total_count=30, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--彩蛋盗宝团潮
		[33170] = {total_count=30, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--雷飘浮灵+水漂浮灵+雷史莱姆+水史莱姆
		[33171] = {total_count=6, min_count=4, max_count=6, fill_time=0, fill_count=0, is_ordered = true},

		--恒常机关阵列
		[33172] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--古岩龙蜥水
		[33173] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--古岩龙蜥火
		[33174] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--古岩龙蜥冰
		[33175] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--古岩龙蜥电
		[33176] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--魔偶剑鬼
		[33177] = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true},

		--剑鬼三兄弟
		[33178] = {total_count=3, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true},
	},
	Time_ChallengeID = 111197,  --需要限时的挑战id
	HP_ChallengeID = 111198,  --需要加血量的挑战id
	Time_Challenge_Time = 120,  --限时挑战时间
	Center_Point_Config_ID = defs.center_point,     --中心点
	Operator_Config_ID = 20000001,                  --普通开怪操作台cfgid
	Operator_Gadget_ID = 70800187,                  --普通开怪操作台gadgetid
	Difficulty_Operator_Config_ID = 20000002,       --高难开怪xxx
	Difficulty_Operator_Gadget_ID = 70800188,       --高难开怪xxx
	Prepare_Operator_Config_ID = 20000003,       --备战操作台xxx
	Prepare_Operator_Gadget_ID = 70800186,       --备战操作台xxx
	AirWall_Config_ID = 20000004,					--空气墙
	AirWall_Gadget_ID = 70800170,					--空气墙
	Portal_Config_ID = 20000005,					--传送门
	Portal_Gadget_ID = 70800208,					--传送门
	Operator_BOSS_Config_ID = 20000006,					--BOSS版开怪操作台
	Operator_BOSS_Gadget_ID = 70800206,					--BOSS版开怪操作台
}

  
local temp_Variables_Rogue_Cell = {
	{  config_id=51110001,name = "gm_EVENT_ROGUE_OPEN_ACCESS", value = 0, no_refresh = false },
	{  config_id=51110002,name = "gm_EVENT_ROGUE_CREAGE_REPAIR_GADGET", value = 0, no_refresh = false },
	{  config_id=51110003,name = "gm_EVENT_ROGUE_CREAGE_FIGHT_GADGET", value = 0, no_refresh = false },
	{  config_id=51110004,name = "gm_EVENT_ROGUE_START_FIGHT", value = 0, no_refresh = false },
	{  config_id=51110005,name = "gm_poolid", value = 0, no_refresh = false },
}
local temp_Tirgger_Rogue_Cell = {
    {event = EventType.EVENT_CHALLENGE_SUCCESS,source = "",condition="",action="action_EVENT_CHALLENGE_SUCCESS",trigger_count=0},
    {event = EventType.EVENT_ROGUE_OPEN_ACCESS,source = "",condition="",action="action_EVENT_ROGUE_OPEN_ACCESS",trigger_count=0},
    {event = EventType.EVENT_ROGUE_CREAGE_REPAIR_GADGET,source = "",condition="",action="action_EVENT_ROGUE_CREAGE_REPAIR_GADGET",trigger_count=0},
    {event = EventType.EVENT_ROGUE_CREAGE_FIGHT_GADGET,source = "",condition="",action="action_EVENT_ROGUE_CREAGE_FIGHT_GADGET",trigger_count=0},
    {event = EventType.EVENT_ROGUE_START_FIGHT,source = "",condition="",action="action_EVENT_ROGUE_START_FIGHT",trigger_count=0},
	{event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL",trigger_count = 0},
	{event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD",trigger_count = 0},
	--{event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE",trigger_count = 0},
	{event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION",trigger_count = 0},
	--gm指令用
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "gm_EVENT_ROGUE_OPEN_ACCESS", condition = "", action = "action_EVENT_ROGUE_OPEN_ACCESS",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "gm_EVENT_ROGUE_CREAGE_REPAIR_GADGET", condition = "", action = "action_EVENT_ROGUE_CREAGE_REPAIR_GADGET",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "gm_EVENT_ROGUE_CREAGE_FIGHT_GADGET", condition = "", action = "action_EVENT_ROGUE_CREAGE_FIGHT_GADGET",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "gm_EVENT_ROGUE_START_FIGHT", condition = "", action = "action_EVENT_ROGUE_START_FIGHT",trigger_count = 0},
}
--靠近操作台时显示reminder
function action_EVENT_ENTER_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ENTER_REGION:")
	if ScriptLib.GetGroupTempValue(context,"ShowReminder",{}) == 1 then 
		ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ENTER_REGION:ShowReminder="..1)
		local _vec = ScriptLib.GetRogueDiaryRoundAndRoom(context)
		if #_vec == 2 then 
			local _stage = _vec[1]
			local _cell = _vec[2]
			ScriptLib.AssignPlayerShowTemplateReminder(context, 167+_stage, {param_vec={_cell},param_uid_vec={},uid_vec={evt.uid}})
		else
			ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ENTER_REGION[Warning]:#_vec="..#_vec)
		end
	end
	return 0
end
--怪物挂sgv【已废弃】
--[[ function action_EVENT_ANY_MONSTER_LIVE(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ANY_MONSTER_LIVE:")
	local _sgv1 = ScriptLib.GetGroupTempValue(context,"sgv1",{})
	local _sgv2 = ScriptLib.GetGroupTempValue(context,"sgv2",{})
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ANY_MONSTER_LIVE:p1="..evt.param1.."|sgv1=".._sgv1.."|sgv2=".._sgv2)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_Rogue_Affixes_Level", _sgv1)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_Rogue_Is_Hard", _sgv2)
	return 0
end ]]
--初始化打开所有空气墙门
function action_EVENT_GROUP_LOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_GROUP_LOAD:[version]2022_3_18_004149")
	local _stage = ScriptLib.GetRogueDiaryDungeonStage(context)
	ScriptLib.SetGroupTempValue(context,"_stage",_stage,{})
	ScriptLib.CreateGadget(context,{config_id = Rogue_Cell.Operator_Config_ID})
	ScriptLib.CreateGadget(context,{config_id = Rogue_Cell.Difficulty_Operator_Config_ID})
	ScriptLib.CreateGadget(context,{config_id = Rogue_Cell.Prepare_Operator_Config_ID})
	ScriptLib.CreateGadget(context,{config_id = Rogue_Cell.Operator_BOSS_Config_ID})
	return 0
end
--杀怪完毕
function action_EVENT_CHALLENGE_SUCCESS(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_CHALLENGE_SUCCESS:")
	ScriptLib.FinishRogueDiaryDungeonSingleRoom(context,false)
	return 0
end
--通知打开通路
function action_EVENT_ROGUE_OPEN_ACCESS(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ROGUE_OPEN_ACCESS:evt.param1 ="..evt.param1)
	ScriptLib.SetGadgetStateByConfigId(context, Rogue_Cell.Prepare_Operator_Config_ID, 0)
	if evt.param1 == 1 then 
		ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ROGUE_OPEN_ACCESS:defs.rogue_exit ="..defs.rogue_exit)
		ScriptLib.CreateGadget(context,{config_id = defs.rogue_exit})
	end	
	return 0
end
--通知创建备战操作台
function action_EVENT_ROGUE_CREAGE_REPAIR_GADGET(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ROGUE_CREAGE_REPAIR_GADGET:")
	ScriptLib.SetGadgetStateByConfigId(context, Rogue_Cell.Prepare_Operator_Config_ID, 201)
    return 0
end
--通知创建刷怪操作台
function action_EVENT_ROGUE_CREAGE_FIGHT_GADGET(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ROGUE_CREAGE_FIGHT_GADGET: evt.param1 = "..evt.param1)
	local _needwait = ScriptLib.GetGroupTempValue(context,"Need_Wait",{})
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ROGUE_CREAGE_FIGHT_GADGET: _needwait = ".._needwait)
	if _needwait ~= 1 then
		LF_Create_Fight_Operator(context,evt.param1,evt.param2)
		ScriptLib.SetGroupTempValue(context,"ShowReminder",1,{})
	else
		--延迟创建，等房间转好了。（地城2的情况）
		--记录下是否高难
		ScriptLib.SetGroupTempValue(context,"operator_is_hard",evt.param1,{})
		--记录下是否boss
		ScriptLib.SetGroupTempValue(context,"operator_is_boss",evt.param2,{})
	end
    return 0
end
function LF_Create_Fight_Operator(context,p1,p2)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell LF_Create_Fight_Operator: p1="..p1.."|p2="..p2)
	ScriptLib.SetGadgetStateByConfigId(context, Rogue_Cell.Prepare_Operator_Config_ID, 0) --刷怪操作台创建的时候也要隐藏整备操作台
	if p1 == 1 then
		ScriptLib.PrintContextLog(context,"## Rogue_Cell LF_Create_Fight_Operator:刷高难操作台")
		ScriptLib.SetGadgetStateByConfigId(context, Rogue_Cell.Difficulty_Operator_Config_ID, 201)
		ScriptLib.SetGroupTempValue(context,"operator_config_id",Rogue_Cell.Difficulty_Operator_Config_ID,{})
	else
		if p2 == 1 then 
			ScriptLib.PrintContextLog(context,"## Rogue_Cell LF_Create_Fight_Operator:刷BOSS操作台")
			ScriptLib.SetGadgetStateByConfigId(context, Rogue_Cell.Operator_BOSS_Config_ID, 201)
			ScriptLib.SetGroupTempValue(context,"operator_config_id",Rogue_Cell.Operator_BOSS_Config_ID,{})
		else
			ScriptLib.PrintContextLog(context,"## Rogue_Cell LF_Create_Fight_Operator:刷普通操作台")
			ScriptLib.SetGadgetStateByConfigId(context, Rogue_Cell.Operator_Config_ID, 201)
			ScriptLib.SetGroupTempValue(context,"operator_config_id",Rogue_Cell.Operator_Config_ID,{})
		end
	end
	return 0
end
--通知刷怪
function action_EVENT_ROGUE_START_FIGHT(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ROGUE_START_FIGHT:p1="..evt.param1.." | p2="..evt.param2.." | p3="..evt.param3)
    local _poolid = evt.param1
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ROGUE_START_FIGHT:_poolid=".._poolid)
	if _poolid == 0 then _poolid = ScriptLib.GetGroupVariableValue(context,"gm_poolid") end
	local _challengeid = evt.param2
	if _challengeid == 0 then _challengeid = 111196 end
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ROGUE_START_FIGHT:开挑战")
    --开挑战
	if _challengeid == Rogue_Cell.Time_ChallengeID then --如果该挑战是需要限时的
		--用限时的方式开启(带时间参数)
        ScriptLib.ActiveChallenge(context, 1, _challengeid, Rogue_Cell.Time_Challenge_Time,base_info.group_id, Rogue_Cell.Monster_Pool_Info[_poolid].total_count, 0)
	else
		--普通方式开启
		ScriptLib.ActiveChallenge(context, 1, _challengeid, base_info.group_id,Rogue_Cell.Monster_Pool_Info[_poolid].total_count, 0, 0)
	end
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ROGUE_START_FIGHT:刷怪")
	--查询并记录sgv
	local _sgv1 = 0
	local _sgv2 = 0
	_sgv1 = evt.param3
	if Rogue_Cell.HP_ChallengeID == evt.param2 then 
		_sgv2 = 1
	else
		_sgv2 = 0
	end
	--特判：彩蛋关无sgv
	if _poolid == 33169 or _poolid == 33170 then 
		_sgv1 = 0
		_sgv2 = 0
	end
    --刷怪
    if Rogue_Cell.Monster_Pool_Info[_poolid] == nil then 
        ScriptLib.PrintContextLog(context,"## 【error】 Rogue_Cell action_EVENT_SELECT_OPTION:".."找不到资源包配置")
        return 0
    end
    local _info = Rogue_Cell.Monster_Pool_Info[_poolid]
    _info.tag = 2   --point点的tag都是2 加下
	_info.sgv_map = {
		SGV_Rogue_Affixes_Level = _sgv1,
		SGV_Rogue_Is_Hard = _sgv2,
	}
    ScriptLib.AutoPoolMonsterTide(context,1,base_info.group_id,{_poolid},0,{},{},_info)
    --销毁操作台
	local _cid = ScriptLib.GetGroupTempValue(context,"operator_config_id",{})
	ScriptLib.SetGadgetStateByConfigId(context, _cid, 0)
	ScriptLib.SetGroupTempValue(context,"ShowReminder",0,{})
    return 0
end
--失败重新创建操作台
function action_EVENT_CHALLENGE_FAIL(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_CHALLENGE_FAIL:")
	--清空怪物潮
	local _poolid = ScriptLib.GetGroupTempValue(context,"poolid",{})
	ScriptLib.ClearPoolMonsterTide(context, base_info.group_id, 1)

	--通知服务器
	ScriptLib.FinishRogueDiaryDungeonSingleRoom(context,true)
	local _cid = ScriptLib.GetGroupTempValue(context,"operator_config_id",{})
	ScriptLib.SetGadgetStateByConfigId(context, _cid, 201)
    return 0
end
--已废弃
function SLC_Monster_Ready(context)
--[[ 	local _sgv1 = ScriptLib.GetGroupTempValue(context,"sgv1",{})
	local _sgv2 = ScriptLib.GetGroupTempValue(context,"sgv2",{})
	ScriptLib.PrintContextLog(context,"## Rogue_Cell SLC_Monster_Ready:p1="..context.source_entity_id.."|sgv1=".._sgv1.."|sgv2=".._sgv2)
	ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Rogue_Affixes_Level", _sgv1)
	ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Rogue_Is_Hard", _sgv2) ]]
	return 0
end
function SLC_StageReady_Rogue(context)
	ScriptLib.PrintContextLog(context,"## Rogue_Cell SLC_StageReady_Rogue:")
	local _stage = ScriptLib.GetGroupTempValue(context,"_stage",{})
	if _stage == 1 then 
		ScriptLib.AssignPlayerShowTemplateReminder(context,184,{param_uid_vec={},param_vec={},uid_vec={context.uid}})
	elseif _stage == 2 then 
		ScriptLib.AssignPlayerShowTemplateReminder(context,185,{param_uid_vec={},param_vec={},uid_vec={context.uid}})
	elseif _stage == 3 then 
		ScriptLib.AssignPlayerShowTemplateReminder(context,186,{param_uid_vec={},param_vec={},uid_vec={context.uid}})
	elseif _stage == 4 then 
		ScriptLib.AssignPlayerShowTemplateReminder(context,187,{param_uid_vec={},param_vec={},uid_vec={context.uid}})
	end
	return 0
end
--初始化
function Initialize()
    --在中心点加操作台(玩法特有)
    for k,v in pairs(points) do
        if v.config_id == Rogue_Cell.Center_Point_Config_ID then
			local _pos = {x =v.pos.x, y =v.pos.y+2, z = v.pos.z}
			--普通开怪操作台
            table.insert(gadgets,{config_id=Rogue_Cell.Operator_Config_ID,gadget_id=Rogue_Cell.Operator_Gadget_ID,pos=_pos,rot=v.rot,level=1})
			table.insert(suites[init_config.suite].gadgets,Rogue_Cell.Operator_Config_ID)
			--选难度开怪操作台
            table.insert(gadgets,{config_id=Rogue_Cell.Difficulty_Operator_Config_ID,gadget_id=Rogue_Cell.Difficulty_Operator_Gadget_ID,pos=_pos,rot=v.rot,level=1})
			table.insert(suites[init_config.suite].gadgets,Rogue_Cell.Difficulty_Operator_Config_ID)
			--备战操作台
            table.insert(gadgets,{config_id=Rogue_Cell.Prepare_Operator_Config_ID,gadget_id=Rogue_Cell.Prepare_Operator_Gadget_ID,pos=_pos,rot=v.rot,level=1})
			table.insert(suites[init_config.suite].gadgets,Rogue_Cell.Prepare_Operator_Config_ID)
			--boss版开怪操作台
            table.insert(gadgets,{config_id=Rogue_Cell.Operator_BOSS_Config_ID,gadget_id=Rogue_Cell.Operator_BOSS_Gadget_ID,pos=_pos,rot=v.rot,level=1})
			table.insert(suites[init_config.suite].gadgets,Rogue_Cell.Operator_BOSS_Config_ID)
			--reminder用region
			table.insert(regions,{ config_id = 30000001, shape = RegionShape.SPHERE, radius = 10, pos = v.pos })
			table.insert(suites[init_config.suite].regions,30000001)
        end
    end
    
	--加触发器
    if temp_Tirgger_Rogue_Cell ~= nil then 
        for k,v in pairs(temp_Tirgger_Rogue_Cell) do
            v.name = "temp_Tirgger_"..k
            v.config_id = 40000000 + k
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables_Rogue_Cell ~= nil then 
        for k,v in pairs(temp_Variables_Rogue_Cell) do
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize()