-- 基础信息
local base_info = {
	group_id = 133308042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 25010501, pos = { x = -1812.216, y = 280.991, z = 3985.084 }, rot = { x = 0.000, y = 281.269, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 26 },
	{ config_id = 42004, monster_id = 25020201, pos = { x = -1808.662, y = 281.379, z = 3980.502 }, rot = { x = 0.000, y = 304.718, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9003, area_id = 26 },
	{ config_id = 42005, monster_id = 25070101, pos = { x = -1829.371, y = 280.799, z = 3976.787 }, rot = { x = 0.000, y = 170.309, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 26 },
	{ config_id = 42006, monster_id = 25020201, pos = { x = -1800.308, y = 282.569, z = 3978.347 }, rot = { x = 0.000, y = 312.188, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9004, area_id = 26 },
	{ config_id = 42011, monster_id = 25010301, pos = { x = -1806.461, y = 281.813, z = 3977.113 }, rot = { x = 0.000, y = 339.060, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9005, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42002, gadget_id = 70211002, pos = { x = -1812.268, y = 282.011, z = 3975.783 }, rot = { x = 4.464, y = 43.005, z = 3.827 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 42007, gadget_id = 70310004, pos = { x = -1802.774, y = 282.274, z = 3978.977 }, rot = { x = 10.217, y = 0.604, z = 6.748 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 42008, gadget_id = 70220052, pos = { x = -1816.911, y = 281.192, z = 3980.543 }, rot = { x = 356.297, y = 315.238, z = 303.611 }, level = 32, area_id = 26 },
	{ config_id = 42009, gadget_id = 70220050, pos = { x = -1817.660, y = 280.847, z = 3980.555 }, rot = { x = 1.032, y = 13.802, z = 9.014 }, level = 32, area_id = 26 },
	{ config_id = 42010, gadget_id = 70210101, pos = { x = -1810.282, y = 279.230, z = 4004.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042003, name = "ANY_MONSTER_DIE_42003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42003", action = "action_EVENT_ANY_MONSTER_DIE_42003" }
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
		monsters = { 42001, 42004, 42005, 42006, 42011 },
		gadgets = { 42002, 42007, 42008, 42009, 42010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_42003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 42002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end