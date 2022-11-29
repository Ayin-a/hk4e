-- 基础信息
local base_info = {
	group_id = 155007046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46001, monster_id = 20011001, pos = { x = -443.961, y = 189.800, z = 1521.827 }, rot = { x = 0.000, y = 318.182, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 46002, monster_id = 20011001, pos = { x = -438.599, y = 189.800, z = 1525.210 }, rot = { x = 0.000, y = 262.235, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 46003, monster_id = 20011001, pos = { x = -447.783, y = 189.800, z = 1516.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 46004, monster_id = 20011001, pos = { x = -448.517, y = 189.800, z = 1525.404 }, rot = { x = 0.000, y = 114.595, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 46005, monster_id = 20011101, pos = { x = -445.187, y = 189.800, z = 1516.084 }, rot = { x = 0.000, y = 349.386, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 200 },
	{ config_id = 46006, monster_id = 20011101, pos = { x = -439.076, y = 189.800, z = 1518.235 }, rot = { x = 0.000, y = 321.312, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 200 },
	{ config_id = 46011, monster_id = 20011001, pos = { x = -438.721, y = 189.800, z = 1522.421 }, rot = { x = 0.000, y = 263.125, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 46012, monster_id = 20011001, pos = { x = -450.166, y = 189.800, z = 1520.366 }, rot = { x = 0.000, y = 72.323, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 46013, monster_id = 20011001, pos = { x = -442.904, y = 189.800, z = 1528.184 }, rot = { x = 0.000, y = 192.189, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 46010, gadget_id = 70211002, pos = { x = -443.105, y = 189.171, z = 1518.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046007, name = "ANY_MONSTER_DIE_46007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46007", action = "action_EVENT_ANY_MONSTER_DIE_46007" },
	{ config_id = 1046008, name = "ANY_MONSTER_DIE_46008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46008", action = "action_EVENT_ANY_MONSTER_DIE_46008" },
	{ config_id = 1046009, name = "ANY_MONSTER_DIE_46009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46009", action = "action_EVENT_ANY_MONSTER_DIE_46009" }
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
	end_suite = 3,
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
		monsters = { 46001 },
		gadgets = { 46010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 46002, 46003, 46004 },
		gadgets = { 46010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 46005, 46006, 46011, 46012, 46013 },
		gadgets = { 46010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 155007046) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 155007046, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 155007046) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 155007046, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 155007046) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46009(context, evt)
	-- 将configid为 46010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end