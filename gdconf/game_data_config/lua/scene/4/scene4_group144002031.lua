-- 基础信息
local base_info = {
	group_id = 144002031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 21020201, pos = { x = 538.806, y = 120.064, z = -682.801 }, rot = { x = 355.665, y = 236.547, z = 2.859 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 101 },
	{ config_id = 31004, monster_id = 21010201, pos = { x = 530.365, y = 120.329, z = -686.142 }, rot = { x = 0.000, y = 172.371, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 101 },
	{ config_id = 31005, monster_id = 21010201, pos = { x = 525.930, y = 120.622, z = -689.619 }, rot = { x = 0.000, y = 63.695, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 101 },
	{ config_id = 31006, monster_id = 21011001, pos = { x = 542.056, y = 120.000, z = -686.609 }, rot = { x = 0.000, y = 259.442, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 101 },
	{ config_id = 31007, monster_id = 21010201, pos = { x = 532.512, y = 120.445, z = -689.462 }, rot = { x = 0.000, y = 288.387, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 101 },
	{ config_id = 31008, monster_id = 21010701, pos = { x = 538.289, y = 120.000, z = -680.725 }, rot = { x = 0.000, y = 230.651, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31002, gadget_id = 70211012, pos = { x = 529.069, y = 120.532, z = -688.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 31010, gadget_id = 70300089, pos = { x = 529.540, y = 120.675, z = -692.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 31011, gadget_id = 70300089, pos = { x = 522.575, y = 120.607, z = -687.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 31012, gadget_id = 70300089, pos = { x = 534.585, y = 120.087, z = -680.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1031003, name = "ANY_MONSTER_DIE_31003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31003", action = "action_EVENT_ANY_MONSTER_DIE_31003" },
	{ config_id = 1031009, name = "ANY_MONSTER_DIE_31009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31009", action = "action_EVENT_ANY_MONSTER_DIE_31009" }
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
		monsters = { 31004, 31005, 31007 },
		gadgets = { 31002, 31010, 31011, 31012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_31009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 31001, 31006, 31008 },
		gadgets = { 31002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_31003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31003(context, evt)
	-- 将configid为 31002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31002, GadgetState.Default) then
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
function condition_EVENT_ANY_MONSTER_DIE_31009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002031, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=530.7667,y=120.4918,z=-690.5383}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end