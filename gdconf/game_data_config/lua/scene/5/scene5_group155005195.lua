-- 基础信息
local base_info = {
	group_id = 155005195
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195001, monster_id = 22010101, pos = { x = 325.537, y = 336.972, z = 256.452 }, rot = { x = 0.000, y = 184.380, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 200 },
	{ config_id = 195010, monster_id = 21010101, pos = { x = 318.949, y = 337.021, z = 267.641 }, rot = { x = 0.000, y = 291.399, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 200 },
	{ config_id = 195012, monster_id = 21010701, pos = { x = 329.960, y = 336.928, z = 258.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 195002, gadget_id = 70211002, pos = { x = 319.460, y = 338.086, z = 260.572 }, rot = { x = 347.825, y = 355.501, z = 13.473 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 195004, gadget_id = 70300107, pos = { x = 324.981, y = 336.955, z = 254.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 195005, gadget_id = 70300086, pos = { x = 327.753, y = 336.154, z = 252.869 }, rot = { x = 356.849, y = 0.312, z = 354.335 }, level = 36, area_id = 200 },
	{ config_id = 195006, gadget_id = 70300086, pos = { x = 316.030, y = 335.756, z = 264.590 }, rot = { x = 10.190, y = 0.000, z = 14.507 }, level = 36, area_id = 200 },
	{ config_id = 195007, gadget_id = 70310006, pos = { x = 318.008, y = 337.008, z = 265.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 195008, gadget_id = 70310001, pos = { x = 326.883, y = 336.908, z = 266.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 195009, gadget_id = 70310001, pos = { x = 334.279, y = 336.810, z = 257.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1195003, name = "ANY_MONSTER_DIE_195003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_195003", action = "action_EVENT_ANY_MONSTER_DIE_195003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 195011, monster_id = 21010701, pos = { x = 336.712, y = 337.539, z = 242.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 }
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
		monsters = { 195001, 195010, 195012 },
		gadgets = { 195002, 195004, 195005, 195006, 195007, 195008, 195009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_195003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_195003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_195003(context, evt)
	-- 将configid为 195002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195002, GadgetState.Default) then
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