-- 基础信息
local base_info = {
	group_id = 177008002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21020201, pos = { x = -126.434, y = 228.273, z = 231.425 }, rot = { x = 0.000, y = 46.741, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5135, 1040 }, pose_id = 401, area_id = 210 },
	{ config_id = 2004, monster_id = 21030303, pos = { x = -125.039, y = 228.280, z = 237.300 }, rot = { x = 0.000, y = 124.646, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 },
	{ config_id = 2005, monster_id = 21011001, pos = { x = -120.967, y = 228.557, z = 232.310 }, rot = { x = 0.000, y = 289.862, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, pose_id = 32, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2002, gadget_id = 70211156, pos = { x = -123.348, y = 228.199, z = 234.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 2006, gadget_id = 70220014, pos = { x = -120.539, y = 228.392, z = 237.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 2007, gadget_id = 70220014, pos = { x = -121.667, y = 228.310, z = 237.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 2008, gadget_id = 70300089, pos = { x = -122.625, y = 228.589, z = 230.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 2009, gadget_id = 70300089, pos = { x = -121.324, y = 228.604, z = 231.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 2010, gadget_id = 70300089, pos = { x = -128.067, y = 228.277, z = 235.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 2011, gadget_id = 70300089, pos = { x = -127.278, y = 228.295, z = 236.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "ANY_MONSTER_DIE_2003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2003", action = "action_EVENT_ANY_MONSTER_DIE_2003" }
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
		monsters = { 2001, 2004, 2005 },
		gadgets = { 2002, 2006, 2007, 2008, 2009, 2010, 2011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2003(context, evt)
	-- 将configid为 2002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.Default) then
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