-- 基础信息
local base_info = {
	group_id = 199004152
}

-- DEFS_MISCS
local defs = 
{
        rmd_list = {1111157,1111158,1111159},
}
--从table中取得随机value
function LF_GetRandomResult(context, source_table)

        math.randomseed(ScriptLib.GetServerTime(context))
        rand_index = math.random(#source_table)
        
        if nil ~= source_table[rand_index] then
                ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result: value@"..source_table[rand_index])
                return source_table[rand_index]
        end
        ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result failed! rand_index@"..rand_index)
        return -1
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 21010501, pos = { x = -169.780, y = 126.086, z = -343.756 }, rot = { x = 0.000, y = 357.796, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 401 },
	{ config_id = 152002, monster_id = 21010501, pos = { x = -174.337, y = 126.015, z = -346.047 }, rot = { x = 0.000, y = 330.396, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 401 },
	{ config_id = 152003, monster_id = 20010301, pos = { x = -171.260, y = 126.190, z = -345.622 }, rot = { x = 0.000, y = 357.796, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 },
	{ config_id = 152004, monster_id = 20010301, pos = { x = -172.795, y = 126.060, z = -342.961 }, rot = { x = 0.000, y = 357.796, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 },
	{ config_id = 152005, monster_id = 21011001, pos = { x = -145.837, y = 126.085, z = -369.919 }, rot = { x = 0.000, y = 128.534, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 401 },
	{ config_id = 152006, monster_id = 21011001, pos = { x = -142.258, y = 126.040, z = -367.574 }, rot = { x = 0.000, y = 128.534, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 401 },
	{ config_id = 152007, monster_id = 20011301, pos = { x = -143.830, y = 126.140, z = -369.309 }, rot = { x = 0.000, y = 128.534, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 401 },
	{ config_id = 152008, monster_id = 21030301, pos = { x = -178.789, y = 123.824, z = -320.936 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 401 },
	{ config_id = 152009, monster_id = 21010401, pos = { x = -188.202, y = 123.795, z = -337.040 }, rot = { x = 0.000, y = 359.367, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 401 },
	{ config_id = 152010, monster_id = 21010401, pos = { x = -190.246, y = 123.724, z = -336.486 }, rot = { x = 0.000, y = 359.367, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 401 },
	{ config_id = 152011, monster_id = 21010401, pos = { x = -147.921, y = 123.861, z = -386.458 }, rot = { x = 0.000, y = 127.712, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 152012, gadget_id = 70290059, pos = { x = -171.509, y = 120.000, z = -344.500 }, rot = { x = 0.000, y = 328.606, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152013, gadget_id = 70290059, pos = { x = -145.700, y = 120.000, z = -368.728 }, rot = { x = 0.000, y = 197.058, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152014, gadget_id = 70290057, pos = { x = -158.544, y = 119.338, z = -357.342 }, rot = { x = 0.000, y = 313.645, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152015, gadget_id = 70290057, pos = { x = -171.214, y = 119.255, z = -361.860 }, rot = { x = 0.000, y = 15.634, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152016, gadget_id = 70290057, pos = { x = -154.950, y = 119.267, z = -344.155 }, rot = { x = 0.000, y = 262.790, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152017, gadget_id = 70290057, pos = { x = -143.834, y = 119.267, z = -352.526 }, rot = { x = 0.000, y = 196.964, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152018, gadget_id = 70290057, pos = { x = -165.513, y = 119.307, z = -371.313 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152019, gadget_id = 70290061, pos = { x = -181.768, y = 120.000, z = -356.725 }, rot = { x = 0.000, y = 230.933, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152020, gadget_id = 70290061, pos = { x = -131.494, y = 120.000, z = -360.114 }, rot = { x = 0.000, y = 241.810, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152021, gadget_id = 70950087, pos = { x = -162.383, y = 120.000, z = -361.859 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152022, gadget_id = 70950087, pos = { x = -154.709, y = 120.000, z = -353.017 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152023, gadget_id = 70950087, pos = { x = -153.348, y = 120.000, z = -351.122 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152024, gadget_id = 70950087, pos = { x = -154.981, y = 120.000, z = -351.363 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152025, gadget_id = 70950087, pos = { x = -163.511, y = 120.000, z = -363.123 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152026, gadget_id = 70950087, pos = { x = -164.720, y = 120.000, z = -361.995 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152027, gadget_id = 70950092, pos = { x = -148.231, y = 120.000, z = -386.215 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152028, gadget_id = 70950092, pos = { x = -178.327, y = 120.000, z = -321.074 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152029, gadget_id = 70950092, pos = { x = -188.462, y = 120.000, z = -337.756 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152030, gadget_id = 70950087, pos = { x = -146.378, y = 120.000, z = -388.054 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152031, gadget_id = 70950087, pos = { x = -145.207, y = 120.000, z = -387.109 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152032, gadget_id = 70950087, pos = { x = -146.542, y = 120.000, z = -384.614 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152033, gadget_id = 70950087, pos = { x = -180.508, y = 120.000, z = -319.182 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152034, gadget_id = 70950087, pos = { x = -180.281, y = 120.000, z = -323.094 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152035, gadget_id = 70950087, pos = { x = -181.531, y = 120.000, z = -321.868 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152036, gadget_id = 70950087, pos = { x = -186.926, y = 120.000, z = -335.435 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152037, gadget_id = 70950087, pos = { x = -190.703, y = 120.000, z = -340.142 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152038, gadget_id = 70950087, pos = { x = -191.734, y = 120.000, z = -338.154 }, rot = { x = 0.000, y = 273.971, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152039, gadget_id = 70290057, pos = { x = -167.051, y = 120.000, z = -321.015 }, rot = { x = 0.000, y = 235.161, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 152041, gadget_id = 70211002, pos = { x = -170.015, y = 126.206, z = -348.014 }, rot = { x = 0.000, y = 331.310, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 改变变量，解锁宝箱
	{ config_id = 1152040, name = "ANY_MONSTER_DIE_152040", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_152040", action = "action_EVENT_ANY_MONSTER_DIE_152040" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 152001, 152002, 152003, 152004, 152005, 152006, 152007, 152008, 152009, 152010, 152011 },
		gadgets = { 152012, 152013, 152014, 152015, 152016, 152017, 152018, 152019, 152020, 152021, 152022, 152023, 152024, 152025, 152026, 152027, 152028, 152029, 152030, 152031, 152032, 152033, 152034, 152035, 152036, 152037, 152038, 152039, 152041 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_152040" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_152040(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_152040(context, evt)
	-- 将configid为 152041 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152041, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "is_remindered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_remindered", 1, 199004153) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end