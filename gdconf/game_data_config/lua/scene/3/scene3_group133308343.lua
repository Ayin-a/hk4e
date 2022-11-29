-- 基础信息
local base_info = {
	group_id = 133308343
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 343001, monster_id = 21010401, pos = { x = -1913.165, y = 135.636, z = 5006.167 }, rot = { x = 0.000, y = 227.261, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 26 },
	{ config_id = 343002, monster_id = 21030301, pos = { x = -1912.595, y = 134.995, z = 4996.864 }, rot = { x = 0.000, y = 0.663, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 26 },
	{ config_id = 343003, monster_id = 21010501, pos = { x = -1912.125, y = 134.852, z = 5003.275 }, rot = { x = 0.000, y = 242.330, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 26 },
	{ config_id = 343007, monster_id = 21010401, pos = { x = -1923.470, y = 138.189, z = 4989.364 }, rot = { x = 0.000, y = 176.382, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 343004, gadget_id = 70300088, pos = { x = -1915.793, y = 135.536, z = 4997.509 }, rot = { x = 348.903, y = 328.678, z = 355.408 }, level = 32, area_id = 26 },
	{ config_id = 343005, gadget_id = 70300088, pos = { x = -1917.968, y = 136.211, z = 4999.316 }, rot = { x = 354.447, y = 328.099, z = 350.088 }, level = 32, area_id = 26 },
	{ config_id = 343006, gadget_id = 70300088, pos = { x = -1918.349, y = 136.213, z = 5002.686 }, rot = { x = 359.245, y = 328.007, z = 352.021 }, level = 32, area_id = 26 },
	{ config_id = 343008, gadget_id = 70211002, pos = { x = -1923.459, y = 138.584, z = 4995.953 }, rot = { x = 6.250, y = 65.073, z = 356.839 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1343009, name = "ANY_MONSTER_DIE_343009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_343009", action = "action_EVENT_ANY_MONSTER_DIE_343009" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 343010, monster_id = 21010501, pos = { x = -1922.599, y = 130.825, z = 4974.449 }, rot = { x = 0.000, y = 223.400, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 26 }
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
		monsters = { 343001, 343002, 343003, 343007 },
		gadgets = { 343004, 343005, 343006, 343008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_343009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_343009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133308343) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_343009(context, evt)
	-- 将configid为 343008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343008, GadgetState.Default) then
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