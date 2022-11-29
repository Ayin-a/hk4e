-- 基础信息
local base_info = {
	group_id = 133222006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 25100101, pos = { x = -4358.531, y = 207.660, z = -4357.344 }, rot = { x = 0.000, y = 258.383, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1002, area_id = 14 },
	{ config_id = 6004, monster_id = 25080101, pos = { x = -4362.882, y = 199.391, z = -4361.301 }, rot = { x = 0.000, y = 349.323, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1006, area_id = 14 },
	{ config_id = 6005, monster_id = 25080201, pos = { x = -4362.988, y = 199.405, z = -4354.495 }, rot = { x = 0.000, y = 169.773, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1006, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6002, gadget_id = 70211012, pos = { x = -4354.250, y = 206.643, z = -4357.334 }, rot = { x = 13.052, y = 95.617, z = 359.614 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 6007, gadget_id = 70900393, pos = { x = -4359.985, y = 199.696, z = -4353.957 }, rot = { x = 0.000, y = 99.229, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 6008, gadget_id = 70900393, pos = { x = -4359.250, y = 199.555, z = -4361.038 }, rot = { x = 0.000, y = 3.815, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006003, name = "ANY_MONSTER_DIE_6003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6003", action = "action_EVENT_ANY_MONSTER_DIE_6003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 6006, monster_id = 25080301, pos = { x = -4344.934, y = 199.627, z = -4372.797 }, rot = { x = 0.000, y = 182.710, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1006, area_id = 14 }
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
		monsters = { 6001, 6004, 6005 },
		gadgets = { 6002, 6007, 6008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6003(context, evt)
	-- 将configid为 6002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6002, GadgetState.Default) then
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