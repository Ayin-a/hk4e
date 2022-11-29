-- 基础信息
local base_info = {
	group_id = 155008124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124001, monster_id = 21020801, pos = { x = -328.066, y = 263.857, z = 385.724 }, rot = { x = 359.005, y = 127.033, z = 359.911 }, level = 36, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124002, gadget_id = 70211012, pos = { x = -339.052, y = 264.395, z = 388.812 }, rot = { x = 6.066, y = 117.812, z = 5.294 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 124004, gadget_id = 70310001, pos = { x = -330.639, y = 264.577, z = 382.541 }, rot = { x = 0.573, y = 356.944, z = 0.819 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 124005, gadget_id = 70350007, pos = { x = -315.883, y = 262.300, z = 373.657 }, rot = { x = 356.970, y = 228.563, z = 358.488 }, level = 36, area_id = 200 },
	{ config_id = 124006, gadget_id = 70350007, pos = { x = -319.099, y = 262.436, z = 377.498 }, rot = { x = 357.067, y = 232.040, z = 358.307 }, level = 36, area_id = 200 },
	{ config_id = 124008, gadget_id = 70300089, pos = { x = -347.134, y = 265.999, z = 367.383 }, rot = { x = 3.575, y = 356.054, z = 0.743 }, level = 36, area_id = 200 },
	{ config_id = 124009, gadget_id = 70300086, pos = { x = -324.785, y = 263.642, z = 380.909 }, rot = { x = 354.303, y = 359.913, z = 336.299 }, level = 36, area_id = 200 },
	{ config_id = 124011, gadget_id = 70350007, pos = { x = -313.317, y = 262.074, z = 364.804 }, rot = { x = 357.936, y = 284.562, z = 351.420 }, level = 36, area_id = 200 },
	{ config_id = 124012, gadget_id = 70300089, pos = { x = -337.402, y = 265.606, z = 371.350 }, rot = { x = 0.000, y = 356.940, z = 357.140 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124003, name = "ANY_MONSTER_DIE_124003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124003", action = "action_EVENT_ANY_MONSTER_DIE_124003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 124007, gadget_id = 70350007, pos = { x = -330.543, y = 269.706, z = 389.933 }, rot = { x = 0.021, y = 279.054, z = 344.725 }, level = 36, area_id = 200 },
		{ config_id = 124010, gadget_id = 70300089, pos = { x = -340.047, y = 265.904, z = 364.425 }, rot = { x = 0.000, y = 356.940, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 124013, gadget_id = 70300089, pos = { x = -324.022, y = 262.881, z = 385.813 }, rot = { x = 0.000, y = 356.940, z = 357.140 }, level = 36, area_id = 200 }
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
		monsters = { 124001 },
		gadgets = { 124002, 124004, 124005, 124006, 124008, 124009, 124011, 124012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_124003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_124003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_124003(context, evt)
	-- 将configid为 124002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124002, GadgetState.Default) then
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