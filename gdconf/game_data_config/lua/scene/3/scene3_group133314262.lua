-- 基础信息
local base_info = {
	group_id = 133314262
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 262001, monster_id = 26100301, pos = { x = -106.089, y = 330.074, z = 4250.517 }, rot = { x = 0.000, y = 259.007, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 262004, monster_id = 28060301, pos = { x = -141.446, y = 322.524, z = 4234.080 }, rot = { x = 0.000, y = 56.917, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 111, area_id = 32 },
	{ config_id = 262005, monster_id = 28060301, pos = { x = -125.667, y = 327.542, z = 4260.814 }, rot = { x = 0.000, y = 258.545, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 111, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 262002, gadget_id = 70211012, pos = { x = -133.101, y = 319.193, z = 4249.592 }, rot = { x = 0.000, y = 286.898, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 262006, gadget_id = 70220103, pos = { x = -179.631, y = 283.788, z = 4311.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 262007, gadget_id = 70220103, pos = { x = -195.991, y = 265.779, z = 4323.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 262008, gadget_id = 70220103, pos = { x = -169.952, y = 322.426, z = 4266.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 262009, gadget_id = 70220103, pos = { x = -176.756, y = 309.353, z = 4280.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1262003, name = "ANY_MONSTER_DIE_262003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_262003", action = "action_EVENT_ANY_MONSTER_DIE_262003" }
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
		monsters = { 262001, 262004, 262005 },
		gadgets = { 262002, 262006, 262007, 262008, 262009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_262003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_262003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_262003(context, evt)
	-- 将configid为 262002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 262002, GadgetState.Default) then
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