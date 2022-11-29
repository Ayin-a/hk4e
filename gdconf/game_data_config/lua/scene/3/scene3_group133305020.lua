-- 基础信息
local base_info = {
	group_id = 133305020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 近处围观
	{ config_id = 20001, monster_id = 21010201, pos = { x = -2335.714, y = 221.726, z = 3981.433 }, rot = { x = 0.000, y = 318.664, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 26 },
	-- 近处围观
	{ config_id = 20002, monster_id = 21010301, pos = { x = -2332.658, y = 221.018, z = 3993.077 }, rot = { x = 0.000, y = 214.411, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 26 },
	{ config_id = 20009, monster_id = 21010401, pos = { x = -2309.328, y = 242.474, z = 3984.457 }, rot = { x = 0.000, y = 269.676, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 402, area_id = 26 },
	{ config_id = 20011, monster_id = 21010401, pos = { x = -2344.723, y = 235.499, z = 3978.723 }, rot = { x = 0.000, y = 22.986, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 402, area_id = 26 },
	{ config_id = 20013, monster_id = 21020501, pos = { x = -2337.935, y = 220.728, z = 3998.354 }, rot = { x = 0.000, y = 159.101, z = 0.000 }, level = 32, drop_tag = "丘丘岩盔王", pose_id = 401, area_id = 26 },
	-- 近处围观
	{ config_id = 20018, monster_id = 21010101, pos = { x = -2330.751, y = 221.060, z = 3986.566 }, rot = { x = 0.000, y = 276.474, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20003, gadget_id = 70300100, pos = { x = -2305.024, y = 240.495, z = 3972.975 }, rot = { x = 3.856, y = 17.918, z = 18.564 }, level = 32, area_id = 26 },
	{ config_id = 20004, gadget_id = 70300107, pos = { x = -2329.453, y = 222.587, z = 3979.203 }, rot = { x = 23.703, y = 359.446, z = 7.925 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 20005, gadget_id = 70300107, pos = { x = -2322.328, y = 223.379, z = 3990.692 }, rot = { x = 358.449, y = 359.335, z = 19.779 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 20006, gadget_id = 70300107, pos = { x = -2345.194, y = 219.451, z = 3987.247 }, rot = { x = 19.763, y = 0.201, z = 1.753 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 20007, gadget_id = 70300107, pos = { x = -2331.399, y = 221.232, z = 3997.979 }, rot = { x = 357.319, y = 359.976, z = 5.351 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 20014, gadget_id = 70211022, pos = { x = -2337.330, y = 220.411, z = 3988.271 }, rot = { x = 353.750, y = 114.054, z = 355.999 }, level = 26, chest_drop_id = 2004800, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 20015, gadget_id = 70300102, pos = { x = -2337.452, y = 219.932, z = 3988.282 }, rot = { x = 1.242, y = 342.969, z = 7.072 }, level = 32, area_id = 26 },
	{ config_id = 20016, gadget_id = 70300086, pos = { x = -2302.864, y = 241.428, z = 3968.974 }, rot = { x = 2.782, y = 358.942, z = 8.910 }, level = 32, area_id = 26 },
	{ config_id = 20017, gadget_id = 70300086, pos = { x = -2306.498, y = 242.179, z = 3963.146 }, rot = { x = 14.107, y = 359.869, z = 357.189 }, level = 32, area_id = 26 },
	{ config_id = 20019, gadget_id = 70710348, pos = { x = -2337.647, y = 224.835, z = 3975.007 }, rot = { x = 357.488, y = 175.913, z = 359.715 }, level = 32, area_id = 26 },
	{ config_id = 20020, gadget_id = 70300100, pos = { x = -2313.117, y = 237.683, z = 3965.151 }, rot = { x = 17.788, y = 25.664, z = 38.906 }, level = 32, area_id = 26 },
	{ config_id = 20021, gadget_id = 70300100, pos = { x = -2309.720, y = 233.237, z = 3978.650 }, rot = { x = 349.799, y = 9.016, z = 23.331 }, level = 32, area_id = 26 },
	{ config_id = 20022, gadget_id = 70300100, pos = { x = -2324.760, y = 230.809, z = 3968.258 }, rot = { x = 21.493, y = 28.085, z = 24.327 }, level = 32, area_id = 26 },
	{ config_id = 20025, gadget_id = 70300086, pos = { x = -2342.712, y = 229.869, z = 4007.190 }, rot = { x = 350.835, y = 357.060, z = 10.397 }, level = 32, area_id = 26 },
	{ config_id = 20026, gadget_id = 70300081, pos = { x = -2329.568, y = 225.372, z = 4007.214 }, rot = { x = 8.689, y = 232.932, z = 23.140 }, level = 32, area_id = 26 },
	{ config_id = 20027, gadget_id = 70300086, pos = { x = -2351.648, y = 220.568, z = 3986.636 }, rot = { x = 22.848, y = 359.597, z = 355.726 }, level = 32, area_id = 26 },
	{ config_id = 20028, gadget_id = 70300088, pos = { x = -2344.047, y = 238.444, z = 3972.284 }, rot = { x = 1.059, y = 299.010, z = 331.697 }, level = 32, area_id = 26 },
	{ config_id = 20029, gadget_id = 70300088, pos = { x = -2347.679, y = 237.717, z = 3976.050 }, rot = { x = 21.517, y = 341.419, z = 339.010 }, level = 32, area_id = 26 },
	{ config_id = 20030, gadget_id = 70350007, pos = { x = -2337.132, y = 227.308, z = 4010.089 }, rot = { x = 0.887, y = 33.468, z = 334.511 }, level = 32, area_id = 26 },
	{ config_id = 20031, gadget_id = 70350007, pos = { x = -2333.470, y = 225.049, z = 4007.364 }, rot = { x = 6.613, y = 44.658, z = 338.374 }, level = 32, area_id = 26 },
	{ config_id = 20032, gadget_id = 70220066, pos = { x = -2344.754, y = 222.560, z = 3978.994 }, rot = { x = 25.567, y = 9.627, z = 349.567 }, level = 30, area_id = 26 },
	{ config_id = 20033, gadget_id = 70220066, pos = { x = -2343.973, y = 222.067, z = 3979.629 }, rot = { x = 351.620, y = 121.316, z = 22.685 }, level = 30, area_id = 26 },
	{ config_id = 20034, gadget_id = 70220066, pos = { x = -2345.231, y = 222.218, z = 3979.994 }, rot = { x = 21.406, y = 70.519, z = 18.461 }, level = 30, area_id = 26 },
	{ config_id = 20035, gadget_id = 70220014, pos = { x = -2341.073, y = 223.359, z = 3976.705 }, rot = { x = 35.032, y = 1.411, z = 4.467 }, level = 30, area_id = 26 },
	{ config_id = 20036, gadget_id = 70220014, pos = { x = -2342.144, y = 223.570, z = 3976.346 }, rot = { x = 31.355, y = 0.251, z = 0.895 }, level = 30, area_id = 26 },
	{ config_id = 20037, gadget_id = 70220013, pos = { x = -2342.667, y = 222.438, z = 3978.472 }, rot = { x = 15.368, y = 323.629, z = 341.935 }, level = 30, area_id = 26 },
	{ config_id = 20038, gadget_id = 70220013, pos = { x = -2340.256, y = 224.193, z = 3975.506 }, rot = { x = 26.683, y = 18.742, z = 13.540 }, level = 30, area_id = 26 },
	{ config_id = 20039, gadget_id = 70220013, pos = { x = -2334.730, y = 224.984, z = 3975.041 }, rot = { x = 28.615, y = 335.942, z = 352.105 }, level = 30, area_id = 26 },
	{ config_id = 20040, gadget_id = 70220013, pos = { x = -2332.736, y = 224.642, z = 3975.716 }, rot = { x = 24.690, y = 36.814, z = 16.432 }, level = 30, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020024, name = "ANY_MONSTER_DIE_20024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20024", action = "action_EVENT_ANY_MONSTER_DIE_20024" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 20010, monster_id = 21010401, pos = { x = -2336.659, y = 235.851, z = 3973.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 402, area_id = 26 },
		{ config_id = 20023, monster_id = 20011401, pos = { x = -2341.184, y = 220.749, z = 3982.667 }, rot = { x = 0.000, y = 359.688, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 26 }
	},
	gadgets = {
		{ config_id = 20008, gadget_id = 70710078, pos = { x = -2336.769, y = 215.043, z = 3988.386 }, rot = { x = 1.115, y = 179.929, z = 352.666 }, level = 32, area_id = 26 },
		{ config_id = 20012, gadget_id = 70300087, pos = { x = -2341.184, y = 220.749, z = 3982.667 }, rot = { x = 19.760, y = 359.688, z = 358.210 }, level = 32, area_id = 26 }
	}
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
		monsters = { 20001, 20002, 20009, 20011, 20013, 20018 },
		gadgets = { 20003, 20004, 20005, 20006, 20007, 20014, 20015, 20016, 20017, 20019, 20020, 20021, 20022, 20025, 20026, 20027, 20028, 20029, 20030, 20031, 20032, 20033, 20034, 20035, 20036, 20037, 20038, 20039, 20040 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20024(context, evt)
	--判断死亡怪物的configid是否为 20013
	if evt.param1 ~= 20013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20024(context, evt)
	-- 将configid为 20014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end