-- 基础信息
local base_info = {
	group_id = 133105145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58, monster_id = 21030301, pos = { x = 702.201, y = 266.289, z = -452.934 }, rot = { x = 0.000, y = 108.532, z = 0.000 }, level = 25, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 9 },
	{ config_id = 59, monster_id = 21010901, pos = { x = 708.174, y = 268.574, z = -462.286 }, rot = { x = 0.000, y = 331.199, z = 0.000 }, level = 25, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 9 },
	{ config_id = 60, monster_id = 21010201, pos = { x = 704.201, y = 266.418, z = -451.460 }, rot = { x = 0.000, y = 236.536, z = 0.000 }, level = 25, drop_tag = "丘丘人", pose_id = 9012, area_id = 9 },
	{ config_id = 61, monster_id = 21010201, pos = { x = 704.048, y = 266.179, z = -454.212 }, rot = { x = 0.000, y = 310.755, z = 0.000 }, level = 25, drop_tag = "丘丘人", pose_id = 9012, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 370, gadget_id = 70211012, pos = { x = 706.354, y = 266.286, z = -456.997 }, rot = { x = 359.120, y = 359.918, z = 10.620 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 371, gadget_id = 70220013, pos = { x = 714.303, y = 267.873, z = -455.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 372, gadget_id = 70220014, pos = { x = 713.767, y = 267.302, z = -454.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 373, gadget_id = 70220014, pos = { x = 712.818, y = 267.889, z = -455.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 374, gadget_id = 70220014, pos = { x = 701.428, y = 266.048, z = -454.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 375, gadget_id = 70220014, pos = { x = 702.583, y = 265.965, z = -455.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 376, gadget_id = 70220005, pos = { x = 701.484, y = 265.909, z = -455.431 }, rot = { x = 0.000, y = 300.921, z = 0.000 }, level = 25, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000187, name = "ANY_MONSTER_DIE_187", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_187", action = "action_EVENT_ANY_MONSTER_DIE_187" }
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
		-- description = suite_1,
		monsters = { 58, 59, 60, 61 },
		gadgets = { 370, 371, 372, 373, 374, 375, 376 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_187" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_187(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_187(context, evt)
	-- 将configid为 370 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 370, GadgetState.Default) then
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