-- 基础信息
local base_info = {
	group_id = 133210078
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78004, monster_id = 21030601, pos = { x = -3727.240, y = 121.697, z = -654.777 }, rot = { x = 0.000, y = 170.535, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 78006, monster_id = 22010401, pos = { x = -3725.315, y = 120.989, z = -662.242 }, rot = { x = 352.618, y = 335.229, z = 357.291 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 78002, gadget_id = 70211002, pos = { x = -3720.302, y = 124.399, z = -662.884 }, rot = { x = 348.209, y = 306.716, z = 3.436 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 78009, gadget_id = 70220013, pos = { x = -3728.862, y = 121.044, z = -665.868 }, rot = { x = 351.996, y = 359.937, z = 0.895 }, level = 30, area_id = 17 },
	{ config_id = 78010, gadget_id = 70220013, pos = { x = -3730.279, y = 121.545, z = -664.029 }, rot = { x = 7.769, y = 239.586, z = 19.294 }, level = 30, area_id = 17 },
	{ config_id = 78013, gadget_id = 70300085, pos = { x = -3725.479, y = 121.441, z = -662.188 }, rot = { x = 356.435, y = 253.024, z = 6.663 }, level = 30, area_id = 17 },
	{ config_id = 78014, gadget_id = 70300107, pos = { x = -3727.000, y = 121.769, z = -658.071 }, rot = { x = 356.646, y = 0.839, z = 345.100 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1078003, name = "ANY_MONSTER_DIE_78003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_78003", action = "action_EVENT_ANY_MONSTER_DIE_78003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 78007, monster_id = 21010501, pos = { x = -3738.355, y = 123.717, z = -660.871 }, rot = { x = 0.000, y = 253.894, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 17 }
	},
	gadgets = {
		{ config_id = 78001, gadget_id = 70350007, pos = { x = -3734.955, y = 123.107, z = -656.352 }, rot = { x = 17.657, y = 89.081, z = 0.818 }, level = 30, area_id = 17 },
		{ config_id = 78008, gadget_id = 70350007, pos = { x = -3732.519, y = 122.469, z = -654.311 }, rot = { x = 8.099, y = 359.085, z = 347.132 }, level = 30, area_id = 17 },
		{ config_id = 78011, gadget_id = 70350007, pos = { x = -3732.521, y = 122.673, z = -658.576 }, rot = { x = 353.987, y = 0.456, z = 351.328 }, level = 30, area_id = 17 }
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
		monsters = { 78004, 78006 },
		gadgets = { 78002, 78009, 78010, 78013, 78014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_78003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_78003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_78003(context, evt)
	-- 将configid为 78002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78002, GadgetState.Default) then
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