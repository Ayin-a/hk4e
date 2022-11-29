-- 基础信息
local base_info = {
	group_id = 144001121
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 21030501, pos = { x = 690.772, y = 189.550, z = 320.737 }, rot = { x = 0.000, y = 162.138, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 121005, monster_id = 21010301, pos = { x = 689.662, y = 189.539, z = 320.321 }, rot = { x = 0.000, y = 162.342, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 121006, monster_id = 21010301, pos = { x = 691.998, y = 189.559, z = 320.139 }, rot = { x = 0.000, y = 198.448, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 121007, monster_id = 21010401, pos = { x = 693.177, y = 189.451, z = 326.812 }, rot = { x = 0.000, y = 190.265, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 121008, monster_id = 21010401, pos = { x = 690.303, y = 189.485, z = 310.576 }, rot = { x = 0.000, y = 13.772, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 121009, monster_id = 21020101, pos = { x = 690.627, y = 189.665, z = 308.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 121013, monster_id = 21010901, pos = { x = 682.756, y = 196.131, z = 319.766 }, rot = { x = 0.000, y = 128.755, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 121014, monster_id = 21010401, pos = { x = 698.429, y = 193.182, z = 318.821 }, rot = { x = 0.000, y = 249.679, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 102, guest_ban_drop = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121011, gadget_id = 70211012, pos = { x = 691.630, y = 189.546, z = 326.718 }, rot = { x = 0.000, y = 181.538, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
	{ config_id = 121002, shape = RegionShape.SPHERE, radius = 11, pos = { x = 690.180, y = 189.514, z = 320.408 }, area_id = 102 },
	{ config_id = 121010, shape = RegionShape.SPHERE, radius = 12, pos = { x = 690.875, y = 190.987, z = 322.471 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1121002, name = "ENTER_REGION_121002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121002", action = "action_EVENT_ENTER_REGION_121002" },
	{ config_id = 1121003, name = "ANY_MONSTER_DIE_121003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121003", action = "action_EVENT_ANY_MONSTER_DIE_121003" },
	{ config_id = 1121004, name = "QUEST_START_121004", event = EventType.EVENT_QUEST_START, source = "7900204", condition = "", action = "action_EVENT_QUEST_START_121004" },
	{ config_id = 1121010, name = "ENTER_REGION_121010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121010", action = "action_EVENT_ENTER_REGION_121010" },
	{ config_id = 1121012, name = "ANY_MONSTER_DIE_121012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121012", action = "action_EVENT_ANY_MONSTER_DIE_121012" },
	{ config_id = 1121015, name = "ANY_MONSTER_DIE_121015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121015", action = "action_EVENT_ANY_MONSTER_DIE_121015" }
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
		monsters = { },
		gadgets = { 121011 },
		regions = { 121002, 121010 },
		triggers = { "ENTER_REGION_121002", "ANY_MONSTER_DIE_121003", "QUEST_START_121004", "ENTER_REGION_121010", "ANY_MONSTER_DIE_121012", "ANY_MONSTER_DIE_121015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 121001, 121005, 121006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 121009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 121007, 121008, 121013, 121014 },
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
function condition_EVENT_ENTER_REGION_121002(context, evt)
	if evt.param1 ~= 121002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121002(context, evt)
	-- 针对当前group内变量名为 "findpoint" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "findpoint", 1, 144001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "4001002" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "4001002", 1, 144001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121003(context, evt)
	--判断死亡怪物的configid是否为 121001
	if evt.param1 ~= 121001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121003(context, evt)
	-- 针对当前group内变量名为 "samandie" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "samandie", 1, 144001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_121004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001121, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_121010(context, evt)
	if evt.param1 ~= 121010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001121, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121012(context, evt)
	-- 将configid为 121011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121015(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121015(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001121, 4)
	
	return 0
end