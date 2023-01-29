-- 基础信息
local base_info = {
	group_id = 251010001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1004, monster_id = 21010101, pos = { x = -35.104, y = -3.691, z = 77.914 }, rot = { x = 0.000, y = 30.150, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 1006, monster_id = 21020401, pos = { x = -38.830, y = -3.691, z = 93.324 }, rot = { x = 0.000, y = 149.911, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 1007, monster_id = 21020101, pos = { x = -14.731, y = -3.691, z = 93.650 }, rot = { x = 0.000, y = 234.591, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70310020, pos = { x = -47.531, y = -1.564, z = 44.339 }, rot = { x = 0.000, y = 311.320, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1003, gadget_id = 70211002, pos = { x = -17.730, y = 7.784, z = 74.144 }, rot = { x = 0.000, y = 322.275, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 1002, shape = RegionShape.SPHERE, radius = 15, pos = { x = -23.311, y = -3.691, z = 75.376 } }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "ENTER_REGION_1002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1002", action = "action_EVENT_ENTER_REGION_1002" },
	{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005" }
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
		monsters = { },
		gadgets = { 1001, 1003 },
		regions = { 1002 },
		triggers = { "ENTER_REGION_1002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1004, 1006, 1007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1002(context, evt)
	if evt.param1 ~= 1002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 251010001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 将configid为 1003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组251010004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 251010004, 4001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-25.37517, y=12.95371, z=19.27309}，持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-25.37517, y=12.95371, z=19.27309}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end