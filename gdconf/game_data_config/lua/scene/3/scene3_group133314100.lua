-- 基础信息
local base_info = {
	group_id = 133314100
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 100004, monster_id = 21010401, pos = { x = -645.634, y = 94.227, z = 4634.883 }, rot = { x = 0.000, y = 236.588, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 32 },
	{ config_id = 100005, monster_id = 21010401, pos = { x = -647.616, y = 94.158, z = 4638.606 }, rot = { x = 0.000, y = 234.501, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 402, area_id = 32 },
	{ config_id = 100006, monster_id = 26090201, pos = { x = -643.887, y = 95.099, z = 4645.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 100007, monster_id = 21010701, pos = { x = -643.857, y = 94.862, z = 4643.070 }, rot = { x = 0.000, y = 359.482, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9013, area_id = 32 },
	{ config_id = 100009, monster_id = 21010301, pos = { x = -625.920, y = 98.511, z = 4640.459 }, rot = { x = 0.000, y = 170.551, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 32 },
	{ config_id = 100010, monster_id = 21020201, pos = { x = -635.175, y = 98.009, z = 4640.067 }, rot = { x = 0.000, y = 239.647, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 100001, gadget_id = 70710221, pos = { x = -643.788, y = 94.872, z = 4645.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 100002, gadget_id = 70211002, pos = { x = -629.564, y = 98.221, z = 4639.233 }, rot = { x = 0.000, y = 158.506, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 100012, gadget_id = 70220103, pos = { x = -631.621, y = 107.311, z = 4645.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100003, name = "ANY_MONSTER_DIE_100003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100003", action = "action_EVENT_ANY_MONSTER_DIE_100003" }
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
		monsters = { 100004, 100005, 100006, 100007, 100009, 100010 },
		gadgets = { 100001, 100002, 100012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100003(context, evt)
	-- 将configid为 100002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end