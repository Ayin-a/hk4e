-- 基础信息
local base_info = {
	group_id = 133315213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213004, monster_id = 24010301, pos = { x = 129.967, y = 103.078, z = 2841.730 }, rot = { x = 0.000, y = 125.265, z = 0.000 }, level = 27, drop_tag = "遗迹重机", disableWander = true, affix = { 1009, 1007 }, pose_id = 101, area_id = 20 },
	{ config_id = 213005, monster_id = 24020301, pos = { x = 128.683, y = 103.067, z = 2834.176 }, rot = { x = 0.000, y = 84.983, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 111, area_id = 20 },
	{ config_id = 213006, monster_id = 24020301, pos = { x = 136.998, y = 103.067, z = 2843.812 }, rot = { x = 0.000, y = 171.795, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 111, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 213002, gadget_id = 70211012, pos = { x = 126.942, y = 102.984, z = 2839.821 }, rot = { x = 0.000, y = 135.935, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1213001, name = "MONSTER_BATTLE_213001", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_213001", action = "action_EVENT_MONSTER_BATTLE_213001" },
	{ config_id = 1213003, name = "ANY_MONSTER_DIE_213003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_213003", action = "action_EVENT_ANY_MONSTER_DIE_213003" }
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
		monsters = { 213004, 213005, 213006 },
		gadgets = { 213002 },
		regions = { },
		triggers = { "MONSTER_BATTLE_213001", "ANY_MONSTER_DIE_213003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_213001(context, evt)
	if 213004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_213001(context, evt)
	-- 改变指定group组133315266中， configid为266002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266015, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266016的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266016, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266017的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266017, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266018的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266018, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266019的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266019, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266025的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266025, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266026的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266026, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266027, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 将configid为 213002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 213002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "battle3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "battle3", 1, 133315331) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end