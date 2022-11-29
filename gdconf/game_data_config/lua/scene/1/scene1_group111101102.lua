-- 基础信息
local base_info = {
	group_id = 111101102
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102001, monster_id = 21010201, pos = { x = 2430.789, y = 206.784, z = -1277.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 102007, monster_id = 20050201, pos = { x = 2430.265, y = 207.056, z = -1267.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010 } },
	{ config_id = 102008, monster_id = 21010201, pos = { x = 2436.427, y = 207.327, z = -1282.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 102009, monster_id = 21010401, pos = { x = 2428.306, y = 211.675, z = -1257.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 102010, monster_id = 21010201, pos = { x = 2420.819, y = 206.547, z = -1268.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 102011, monster_id = 20050201, pos = { x = 2473.313, y = 213.384, z = -1283.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010 } },
	{ config_id = 102012, monster_id = 20050201, pos = { x = 2465.331, y = 212.438, z = -1272.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010 } },
	{ config_id = 102013, monster_id = 20050201, pos = { x = 2485.637, y = 213.677, z = -1287.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010 } },
	{ config_id = 102014, monster_id = 20050201, pos = { x = 2490.825, y = 211.038, z = -1269.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010 } },
	{ config_id = 102015, monster_id = 28020301, pos = { x = 2472.589, y = 212.953, z = -1269.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽" },
	{ config_id = 102016, monster_id = 28020301, pos = { x = 2480.117, y = 214.694, z = -1288.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽" },
	{ config_id = 102017, monster_id = 28020301, pos = { x = 2485.078, y = 212.808, z = -1282.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽" },
	{ config_id = 102018, monster_id = 21030101, pos = { x = 2427.314, y = 206.404, z = -1268.920 }, rot = { x = 0.000, y = 50.762, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5010 }, pose_id = 9012 },
	{ config_id = 102019, monster_id = 21020101, pos = { x = 2425.320, y = 206.825, z = -1277.658 }, rot = { x = 0.000, y = 37.898, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 102020, monster_id = 21030101, pos = { x = 2431.541, y = 206.034, z = -1264.148 }, rot = { x = 0.000, y = 166.929, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5010 }, pose_id = 9012 },
	{ config_id = 102021, monster_id = 21030101, pos = { x = 2432.227, y = 206.382, z = -1270.199 }, rot = { x = 0.000, y = 328.549, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5010 }, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 102002, gadget_id = 70211022, pos = { x = 2410.195, y = 208.492, z = -1284.412 }, rot = { x = 0.000, y = 74.401, z = 0.000 }, level = 1, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 102004, gadget_id = 70300090, pos = { x = 2427.598, y = 205.991, z = -1257.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 102005, gadget_id = 70300102, pos = { x = 2429.918, y = 206.261, z = -1267.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 102006, gadget_id = 70300087, pos = { x = 2430.078, y = 206.721, z = -1267.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1102003, name = "ANY_MONSTER_DIE_102003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102003", action = "action_EVENT_ANY_MONSTER_DIE_102003" }
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
		monsters = { 102001, 102007, 102008, 102009, 102010, 102011, 102012, 102013, 102014, 102015, 102016, 102017, 102018, 102019, 102020, 102021 },
		gadgets = { 102002, 102004, 102005, 102006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_102003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_102003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_102003(context, evt)
	-- 将configid为 102002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end