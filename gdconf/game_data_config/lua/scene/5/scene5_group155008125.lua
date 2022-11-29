-- 基础信息
local base_info = {
	group_id = 155008125
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 125001, monster_id = 21020201, pos = { x = -296.233, y = 254.701, z = 409.442 }, rot = { x = 19.833, y = 93.898, z = 2.281 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 200 },
	{ config_id = 125008, monster_id = 21010201, pos = { x = -292.977, y = 253.395, z = 407.274 }, rot = { x = 348.046, y = 333.208, z = 339.633 }, level = 36, drop_tag = "丘丘人", pose_id = 9002, area_id = 200 },
	{ config_id = 125010, monster_id = 21010201, pos = { x = -293.343, y = 253.633, z = 410.561 }, rot = { x = 345.082, y = 221.182, z = 19.685 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 125002, gadget_id = 70211002, pos = { x = -295.555, y = 254.534, z = 406.375 }, rot = { x = 11.356, y = 23.237, z = 335.882 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 125004, gadget_id = 70300086, pos = { x = -299.177, y = 255.687, z = 406.809 }, rot = { x = 346.081, y = 346.367, z = 12.628 }, level = 36, area_id = 200 },
	{ config_id = 125007, gadget_id = 70310001, pos = { x = -294.289, y = 254.002, z = 409.168 }, rot = { x = 357.744, y = 0.488, z = 335.579 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1125003, name = "ANY_MONSTER_DIE_125003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_125003", action = "action_EVENT_ANY_MONSTER_DIE_125003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 125009, monster_id = 21010201, pos = { x = -290.023, y = 252.405, z = 402.418 }, rot = { x = 343.782, y = 260.486, z = 359.582 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 200 }
	},
	gadgets = {
		{ config_id = 125005, gadget_id = 70220013, pos = { x = -299.255, y = 255.537, z = 410.596 }, rot = { x = 6.207, y = 14.875, z = 345.288 }, level = 36, area_id = 200 },
		{ config_id = 125006, gadget_id = 70220026, pos = { x = -297.913, y = 255.093, z = 412.323 }, rot = { x = 12.173, y = 41.538, z = 349.629 }, level = 36, area_id = 200 }
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
		monsters = { 125001, 125008, 125010 },
		gadgets = { 125002, 125004, 125007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_125003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_125003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_125003(context, evt)
	-- 将configid为 125002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.Default) then
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