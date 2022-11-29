-- 基础信息
local base_info = {
	group_id = 144002029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29001, monster_id = 21010701, pos = { x = 450.449, y = 208.916, z = -444.789 }, rot = { x = 0.000, y = 155.358, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 101 },
	{ config_id = 29004, monster_id = 21011001, pos = { x = 445.050, y = 209.548, z = -459.356 }, rot = { x = 349.785, y = 265.203, z = 0.931 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 101 },
	{ config_id = 29005, monster_id = 21010701, pos = { x = 442.995, y = 209.698, z = -452.550 }, rot = { x = 0.000, y = 213.464, z = 8.155 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 101 },
	{ config_id = 29006, monster_id = 21020201, pos = { x = 451.999, y = 208.510, z = -442.069 }, rot = { x = 7.968, y = 127.601, z = 353.929 }, level = 20, drop_tag = "丘丘暴徒", area_id = 101 },
	{ config_id = 29007, monster_id = 21010501, pos = { x = 454.180, y = 208.031, z = -440.691 }, rot = { x = 0.000, y = 170.187, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 101 },
	{ config_id = 29009, monster_id = 21010501, pos = { x = 450.238, y = 209.100, z = -453.143 }, rot = { x = 349.785, y = 89.413, z = 0.931 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 101 },
	{ config_id = 29010, monster_id = 21010701, pos = { x = 453.082, y = 207.739, z = -447.614 }, rot = { x = 0.000, y = 100.102, z = 8.155 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 29002, gadget_id = 70211012, pos = { x = 445.460, y = 209.315, z = -455.849 }, rot = { x = 6.885, y = 260.383, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 29011, gadget_id = 70300088, pos = { x = 457.614, y = 206.443, z = -453.571 }, rot = { x = 0.000, y = 185.448, z = 0.000 }, level = 20, area_id = 101 },
	{ config_id = 29012, gadget_id = 70300088, pos = { x = 457.614, y = 206.303, z = -449.452 }, rot = { x = 0.000, y = 185.448, z = 0.000 }, level = 20, area_id = 101 },
	{ config_id = 29013, gadget_id = 70300088, pos = { x = 457.614, y = 206.913, z = -444.894 }, rot = { x = 0.000, y = 185.448, z = 0.000 }, level = 20, area_id = 101 },
	{ config_id = 29014, gadget_id = 70300089, pos = { x = 442.110, y = 209.804, z = -455.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 101 },
	{ config_id = 29015, gadget_id = 70300089, pos = { x = 445.773, y = 209.504, z = -449.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 101 },
	{ config_id = 29016, gadget_id = 70300089, pos = { x = 450.378, y = 208.373, z = -456.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1029003, name = "ANY_MONSTER_DIE_29003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29003", action = "action_EVENT_ANY_MONSTER_DIE_29003" },
	{ config_id = 1029008, name = "ANY_MONSTER_DIE_29008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29008", action = "action_EVENT_ANY_MONSTER_DIE_29008" }
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
		monsters = { 29004, 29005, 29009, 29010 },
		gadgets = { 29002, 29011, 29012, 29013, 29014, 29015, 29016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 29001, 29006, 29007 },
		gadgets = { 29002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29003(context, evt)
	-- 将configid为 29002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002029, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=455.1259,y=209.2258,z=-457.0399}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end