-- 基础信息
local base_info = {
	group_id = 133315225
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 225001, monster_id = 24020101, pos = { x = 221.202, y = 105.416, z = 2832.547 }, rot = { x = 0.000, y = 245.614, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 20 },
	{ config_id = 225002, monster_id = 24020101, pos = { x = 206.650, y = 105.338, z = 2837.613 }, rot = { x = 0.000, y = 331.101, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1225003, name = "MONSTER_BATTLE_225003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_225003", action = "action_EVENT_MONSTER_BATTLE_225003" }
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
		monsters = { 225001, 225002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_225003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_225003(context, evt)
	if 225001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_225003(context, evt)
	-- 改变指定group组133315266中， configid为266004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266028的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266028, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266029的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266029, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end