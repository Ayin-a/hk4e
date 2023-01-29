-- 基础信息
local base_info = {
	group_id = 133314139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139003, monster_id = 28060301, pos = { x = -161.116, y = -44.233, z = 4782.483 }, rot = { x = 0.000, y = 278.197, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 139005, monster_id = 21010901, pos = { x = -154.226, y = -43.089, z = 4785.569 }, rot = { x = 0.000, y = 246.132, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 32 },
	{ config_id = 139006, monster_id = 21010901, pos = { x = -154.792, y = -42.633, z = 4788.218 }, rot = { x = 0.000, y = 227.442, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 139001, gadget_id = 70330337, pos = { x = -153.067, y = -44.511, z = 4788.023 }, rot = { x = 0.000, y = 74.705, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1139002, name = "ANY_GADGET_DIE_139002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_139002", action = "action_EVENT_ANY_GADGET_DIE_139002" },
	{ config_id = 1139004, name = "ANY_MONSTER_DIE_139004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_139004", action = "action_EVENT_ANY_MONSTER_DIE_139004" }
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
		monsters = { 139003 },
		gadgets = { 139001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_139002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 139005, 139006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_139004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_139002(context, evt)
	if 139001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_139002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314139, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_139004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_139004(context, evt)
	-- 改变指定group组133314291中， configid为291002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314291, 291002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end