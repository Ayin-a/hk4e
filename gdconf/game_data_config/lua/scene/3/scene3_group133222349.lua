-- 基础信息
local base_info = {
	group_id = 133222349
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 349001, monster_id = 24020301, pos = { x = -4663.924, y = 161.434, z = -4278.838 }, rot = { x = 0.000, y = 280.219, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 349002, monster_id = 24020301, pos = { x = -4668.366, y = 161.306, z = -4275.487 }, rot = { x = 0.000, y = 159.349, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 349004, gadget_id = 70211012, pos = { x = -4667.908, y = 161.483, z = -4279.242 }, rot = { x = 0.000, y = 60.394, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1349005, name = "ANY_MONSTER_DIE_349005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_349005", action = "action_EVENT_ANY_MONSTER_DIE_349005" },
	{ config_id = 1349006, name = "ANY_MONSTER_DIE_349006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_349006", action = "action_EVENT_ANY_MONSTER_DIE_349006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 349003, monster_id = 24020301, pos = { x = -4668.671, y = 161.307, z = -4275.337 }, rot = { x = 0.000, y = 293.277, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 10, area_id = 14 }
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
		monsters = { 349001, 349002 },
		gadgets = { 349004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_349005", "ANY_MONSTER_DIE_349006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_349005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_349005(context, evt)
	-- 将configid为 349004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 349004, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_349006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_349006(context, evt)
	-- 改变指定group组133222038中， configid为38013的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133222038, 38013, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end