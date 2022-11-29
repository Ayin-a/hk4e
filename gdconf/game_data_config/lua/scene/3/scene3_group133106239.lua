-- 基础信息
local base_info = {
	group_id = 133106239
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 239001, gadget_id = 70220004, pos = { x = -520.003, y = 182.837, z = 1163.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 239002, gadget_id = 70220004, pos = { x = -518.897, y = 182.924, z = 1159.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 239003, gadget_id = 70220004, pos = { x = -516.052, y = 182.877, z = 1147.168 }, rot = { x = 359.900, y = 357.001, z = 359.948 }, level = 32, area_id = 8 },
	{ config_id = 239004, gadget_id = 70220004, pos = { x = -513.844, y = 182.831, z = 1157.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 239006, gadget_id = 70220004, pos = { x = -516.147, y = 184.670, z = 1158.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 239009, gadget_id = 70220004, pos = { x = -515.901, y = 182.931, z = 1152.544 }, rot = { x = 0.000, y = 332.498, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 239010, gadget_id = 70220004, pos = { x = -512.409, y = 182.915, z = 1152.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1239011, name = "ANY_GADGET_DIE_239011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_239011", action = "action_EVENT_ANY_GADGET_DIE_239011" }
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
		gadgets = { 239001, 239002, 239003, 239004, 239006, 239009, 239010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_239011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_239011(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106239}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_239011(context, evt)
	-- 改变指定group组133106229中， configid为229001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133106229, 229001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end