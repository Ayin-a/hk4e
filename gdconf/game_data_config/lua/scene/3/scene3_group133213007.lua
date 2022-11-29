-- 基础信息
local base_info = {
	group_id = 133213007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 21020801, pos = { x = -3111.246, y = 200.226, z = -3459.480 }, rot = { x = 4.467, y = 36.259, z = 359.952 }, level = 27, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 12 },
	{ config_id = 7004, monster_id = 21010501, pos = { x = -3129.459, y = 203.120, z = -3463.496 }, rot = { x = 352.727, y = 255.061, z = 2.951 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 12 },
	{ config_id = 7005, monster_id = 21030301, pos = { x = -3129.643, y = 203.237, z = -3456.732 }, rot = { x = 2.801, y = 162.762, z = 7.246 }, level = 27, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 12 },
	{ config_id = 7016, monster_id = 21010901, pos = { x = -3129.406, y = 203.170, z = -3460.193 }, rot = { x = 352.442, y = 261.576, z = 2.109 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7002, gadget_id = 70211002, pos = { x = -3130.357, y = 203.273, z = -3461.778 }, rot = { x = 7.800, y = 91.038, z = 359.158 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 7006, gadget_id = 70220013, pos = { x = -3134.309, y = 203.865, z = -3457.426 }, rot = { x = 6.288, y = 58.393, z = 355.415 }, level = 27, area_id = 12 },
	{ config_id = 7007, gadget_id = 70220013, pos = { x = -3132.008, y = 203.566, z = -3455.705 }, rot = { x = 3.297, y = 27.715, z = 353.102 }, level = 27, area_id = 12 },
	{ config_id = 7008, gadget_id = 70220013, pos = { x = -3134.836, y = 203.780, z = -3466.509 }, rot = { x = 356.395, y = 347.307, z = 352.963 }, level = 27, area_id = 12 },
	{ config_id = 7009, gadget_id = 70300088, pos = { x = -3134.898, y = 203.845, z = -3463.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 7010, gadget_id = 70300088, pos = { x = -3135.474, y = 203.864, z = -3460.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 7017, gadget_id = 70310006, pos = { x = -3123.701, y = 202.322, z = -3462.525 }, rot = { x = 357.640, y = 355.719, z = 351.469 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007003, name = "ANY_MONSTER_DIE_7003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7003", action = "action_EVENT_ANY_MONSTER_DIE_7003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 7011, gadget_id = 42101003, pos = { x = -3134.220, y = 205.594, z = -3463.596 }, rot = { x = 0.000, y = 272.724, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 7012, gadget_id = 42101003, pos = { x = -3134.220, y = 205.346, z = -3463.477 }, rot = { x = 0.000, y = 272.724, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 7013, gadget_id = 42101010, pos = { x = -3134.623, y = 205.749, z = -3460.062 }, rot = { x = 0.000, y = 270.122, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 7014, gadget_id = 42101010, pos = { x = -3134.623, y = 205.587, z = -3459.904 }, rot = { x = 0.000, y = 270.122, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 7015, gadget_id = 42101010, pos = { x = -3134.623, y = 205.613, z = -3460.307 }, rot = { x = 0.000, y = 270.122, z = 0.000 }, level = 27, area_id = 12 }
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
		monsters = { 7001, 7004, 7005, 7016 },
		gadgets = { 7002, 7006, 7007, 7008, 7009, 7010, 7017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7003(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.Default) then
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