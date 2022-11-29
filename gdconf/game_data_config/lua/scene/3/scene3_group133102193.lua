-- 基础信息
local base_info = {
	group_id = 133102193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 352, monster_id = 21010101, pos = { x = 1325.950, y = 201.355, z = 514.791 }, rot = { x = 357.884, y = 166.587, z = 354.999 }, level = 18, drop_tag = "丘丘人", pose_id = 9011, area_id = 5 },
	{ config_id = 353, monster_id = 21010901, pos = { x = 1316.838, y = 200.280, z = 520.283 }, rot = { x = 356.553, y = 199.292, z = 350.007 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 354, monster_id = 21030101, pos = { x = 1317.300, y = 200.256, z = 517.026 }, rot = { x = 1.844, y = 359.137, z = 3.548 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 5 },
	{ config_id = 355, monster_id = 21010101, pos = { x = 1324.423, y = 201.244, z = 512.550 }, rot = { x = 352.403, y = 66.103, z = 14.059 }, level = 19, drop_tag = "丘丘人", pose_id = 9011, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 690, gadget_id = 70211001, pos = { x = 1326.650, y = 201.605, z = 512.779 }, rot = { x = 12.120, y = 304.872, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000414, name = "ANY_MONSTER_DIE_414", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_414", action = "action_EVENT_ANY_MONSTER_DIE_414", trigger_count = 0 }
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
		monsters = { 352, 353, 354, 355 },
		gadgets = { 690 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_414(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133102193) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_414(context, evt)
	-- 将configid为 690 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 690, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end