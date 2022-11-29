-- 基础信息
local base_info = {
	group_id = 133213002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010101, pos = { x = -3253.646, y = 206.656, z = -3601.645 }, rot = { x = 0.000, y = 32.203, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 12 },
	{ config_id = 2004, monster_id = 21020701, pos = { x = -3262.483, y = 206.329, z = -3606.142 }, rot = { x = 0.000, y = 118.434, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 12 },
	{ config_id = 2005, monster_id = 21030101, pos = { x = -3258.385, y = 205.422, z = -3607.009 }, rot = { x = 0.000, y = 224.579, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 12 },
	{ config_id = 2007, monster_id = 21010101, pos = { x = -3270.558, y = 209.284, z = -3600.544 }, rot = { x = 0.000, y = 200.979, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 12 },
	{ config_id = 2008, monster_id = 21010501, pos = { x = -3273.476, y = 209.630, z = -3600.470 }, rot = { x = 0.000, y = 157.699, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2002, gadget_id = 70211002, pos = { x = -3263.133, y = 205.975, z = -3610.125 }, rot = { x = 1.602, y = 199.044, z = 8.999 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 2006, gadget_id = 70900393, pos = { x = -3260.254, y = 205.409, z = -3607.801 }, rot = { x = 347.833, y = 1.042, z = 350.247 }, level = 27, area_id = 12 },
	{ config_id = 2009, gadget_id = 70220013, pos = { x = -3252.123, y = 206.946, z = -3600.611 }, rot = { x = 344.734, y = 310.672, z = 2.977 }, level = 27, area_id = 12 },
	{ config_id = 2010, gadget_id = 70220013, pos = { x = -3249.840, y = 206.958, z = -3602.113 }, rot = { x = 347.833, y = 1.042, z = 350.247 }, level = 27, area_id = 12 },
	{ config_id = 2011, gadget_id = 70300088, pos = { x = -3272.045, y = 207.849, z = -3605.461 }, rot = { x = 353.224, y = 275.344, z = 14.640 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "ANY_MONSTER_DIE_2003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2003", action = "action_EVENT_ANY_MONSTER_DIE_2003" },
	{ config_id = 1002012, name = "MONSTER_BATTLE_2012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_2012" }
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
		monsters = { 2004, 2005, 2008 },
		gadgets = { 2002, 2006, 2009, 2010, 2011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2003", "MONSTER_BATTLE_2012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2001, 2007 },
		gadgets = { },
		regions = { },
		triggers = { },
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_2012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213002, 2)
	
	return 0
end