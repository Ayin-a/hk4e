-- 基础信息
local base_info = {
	group_id = 133212522
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 522001, monster_id = 25100201, pos = { x = -4075.915, y = 200.055, z = -2150.997 }, rot = { x = 0.000, y = 222.681, z = 0.000 }, level = 27, drop_tag = "高阶武士", disableWander = true, affix = { 1101 }, pose_id = 1002, area_id = 13 },
	{ config_id = 522012, monster_id = 25080101, pos = { x = -4070.517, y = 200.762, z = -2125.712 }, rot = { x = 0.000, y = 304.725, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1006, area_id = 13 },
	{ config_id = 522013, monster_id = 25080201, pos = { x = -4072.720, y = 200.606, z = -2136.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 522014, monster_id = 25080301, pos = { x = -4067.134, y = 200.876, z = -2152.953 }, rot = { x = 0.000, y = 346.581, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1001, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 522002, gadget_id = 70211002, pos = { x = -4079.209, y = 200.165, z = -2153.284 }, rot = { x = 0.000, y = 53.145, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 522004, gadget_id = 70220050, pos = { x = -4066.371, y = 200.630, z = -2156.063 }, rot = { x = 8.299, y = 4.361, z = 8.896 }, level = 27, area_id = 13 },
	{ config_id = 522005, gadget_id = 70220050, pos = { x = -4068.285, y = 200.434, z = -2154.326 }, rot = { x = 19.692, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 522006, gadget_id = 70220050, pos = { x = -4075.364, y = 200.329, z = -2125.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 522007, gadget_id = 70220051, pos = { x = -4075.604, y = 199.812, z = -2154.305 }, rot = { x = 0.000, y = 0.000, z = 336.412 }, level = 27, area_id = 13 },
	{ config_id = 522008, gadget_id = 70220051, pos = { x = -4076.246, y = 199.958, z = -2154.671 }, rot = { x = 0.000, y = 0.000, z = 12.025 }, level = 27, area_id = 13 },
	{ config_id = 522009, gadget_id = 70220051, pos = { x = -4073.825, y = 200.250, z = -2126.223 }, rot = { x = 333.616, y = 4.388, z = 354.003 }, level = 27, area_id = 13 },
	{ config_id = 522010, gadget_id = 70220052, pos = { x = -4076.634, y = 199.999, z = -2153.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 522011, gadget_id = 70220052, pos = { x = -4074.398, y = 200.535, z = -2119.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1522003, name = "ANY_MONSTER_DIE_522003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_522003", action = "action_EVENT_ANY_MONSTER_DIE_522003" }
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
		monsters = { 522001, 522012, 522013, 522014 },
		gadgets = { 522002, 522004, 522005, 522006, 522007, 522008, 522009, 522010, 522011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_522003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_522003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_522003(context, evt)
	-- 将configid为 522002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 522002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end