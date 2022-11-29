-- 基础信息
local base_info = {
	group_id = 111101153
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 153001,
	gadget_Teleport_2 = 153002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 110100037,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 153005,
	gadget_TeleportOperator_2 = 153006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 111101153,
	pointarray_Rotate = 110100028
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1},

}

TeleportOwnerShip = 
{
	{defs.gadget_TeleportOperator_1, defs.gadget_Teleport_1},
	{defs.gadget_TeleportOperator_2, defs.gadget_Teleport_2},
	{defs.gadget_TeleportOperator_3, defs.gadget_Teleport_3},
	{defs.gadget_TeleportOperator_4, defs.gadget_Teleport_4}
}

staticForwardSet = {1,2,3,4,5,6,7,8,9,10}
staticBackwardSet = {10,9,8,7,6,5,4,3,2,1}



function GetTeleportNameByConfigID(context, config_id)
	for k,v  in pairs(defs)  do
		if v == config_id then 
			return k
		end
	end
end

function CheckIsConnected(context,teleport_aID,teleport_bID)

	--获取角度
	ScriptLib.PrintLog("CheckConnected from "..teleport_aID .. " to "..teleport_bID)
	local yrotation_a = ScriptLib.GetRotationByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_aID)).y
	local yrotation_b = ScriptLib.GetRotationByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_bID)).y
	ScriptLib.PrintLog("yrotation_a = "..yrotation_a .. "| yrotation_a =  "..yrotation_b)
	--转换为弧度
	local yrad_a = math.rad(yrotation_a) 
	local yrad_b = math.rad(yrotation_b)
	ScriptLib.PrintLog("yrad_a = "..yrad_a .. "| yrad_b =  "..yrad_b)

	--编辑器中的XZ和运行下的对应关系是反的,所以这里XZ左边调换了一下
	local dir_a = {x = math.sin(yrad_a), y = 0, z = math.cos(yrad_a)}
	local dir_b = {x = math.sin(yrad_b), y = 0, z = math.cos(yrad_b)}
	ScriptLib.PrintLog("dir_a : x = "..dir_a.x.." , y = "..dir_a.y.." , z = "..dir_a.z)
	ScriptLib.PrintLog("dir_b : x = "..dir_b.x.." , y = "..dir_b.y.." , z = "..dir_b.z)
	
	--获取两个点位置
	local pos_a = ScriptLib.GetPosByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_aID))
	ScriptLib.PrintLog("pos_a : x = "..pos_a.x.." , y = "..pos_a.y.." , z = "..pos_a.z)
	local pos_b = ScriptLib.GetPosByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_bID))
	ScriptLib.PrintLog("pos_b : x = "..pos_b.x.." , y = "..pos_b.y.." , z = "..pos_b.z)

	--计算两个点之间的方向,并且Normalize
	local diratob = {x = pos_b.x - pos_a.x,y = 0,z = pos_b.z - pos_a.z}
	local norDirAtoB = Normalize({x = pos_b.x - pos_a.x,y = 0,z = pos_b.z - pos_a.z})
	ScriptLib.PrintLog("norDirAtoB : x = "..norDirAtoB.x.." , y = "..norDirAtoB.y.." , z = "..norDirAtoB.z)
	local dirbtoa = {x = pos_a.x - pos_b.x,y = 0,z = pos_a.z - pos_b.z}
	local norDirBtoA = Normalize({x = pos_a.x - pos_b.x,y = 0,z = pos_a.z - pos_b.z})
	ScriptLib.PrintLog("norDirBtoA : x = "..norDirBtoA.x.." , y = "..norDirBtoA.y.." , z = "..norDirBtoA.z)

	--计算两个点的点乘结果
	local dotvalue_a = dir_a.x * norDirAtoB.x + dir_a.y * norDirAtoB.y + dir_a.z * norDirAtoB.z
	local dotvalue_b = dir_b.x * norDirBtoA.x + dir_b.y * norDirBtoA.y + dir_b.z * norDirBtoA.z

	ScriptLib.PrintLog("dotvalue_a "..dotvalue_a)
	ScriptLib.PrintLog("dotvalue_b "..dotvalue_b)

	--判断点乘结果是否大于0.5,也就是正负 45度范围
	if dotvalue_a >= 0.5  and dotvalue_b >= 0.5 then
		return true 
	end
	
	ScriptLib.PrintLog("invalid cos = ".. dotvalue_a)

	return false

end

--获取所有关联的传送点
function FindRelatedTargets(context,teleport_ID)
	local relatedtarget ={}
	for i=1,#connectInfo do
		if connectInfo[i][1] == teleport_ID or connectInfo[i][2] == teleport_ID then
			if connectInfo[i][1] == teleport_ID then
				table.insert(relatedtarget,{connectInfo[i][2],connectInfo[i][3],staticForwardSet})
			elseif connectInfo[i][2] == teleport_ID then
				table.insert(relatedtarget,{connectInfo[i][1],connectInfo[i][3],staticBackwardSet})
			end
		end
	end
	return relatedtarget
end

--在所有关联传送点中找到激活链接的,如果没有则返回nil
function GetConnectedTeleport(context,teleport_id)
	local related 
	related = FindRelatedTargets(context,teleport_id)

	for i=1,#related do
		if CheckIsConnected(context,teleport_id,related[i][1]) == true then 
			return related[i]
		end
	end
	return nil
end

--数学计算归一化
function Normalize(vet)
	local magnitude = math.sqrt(vet.x * vet.x + vet.y * vet.y + vet.z * vet.z)
	local newvect = {x = vet.x/magnitude, y = vet.y / magnitude, z = vet.z / magnitude}
	return newvect
end

--更新所有传送门的状态表现
function UpdateTeleportState(context)
	
	local teleportname
	for i=1,4 do
			local connect = GetConnectedTeleport(context,TeleportOwnerShip[i][2])
			
		if connect == nil then 
			
			ScriptLib.SetGadgetStateByConfigId(context, TeleportOwnerShip[i][2], GadgetState.Default)
			teleportname = GetTeleportNameByConfigID(context, TeleportOwnerShip[i][2])
			teleportname = teleportname.."_isActive"
			ScriptLib.SetGroupVariableValue(context, teleportname, 0)
			ScriptLib.PrintLog("connect nothing : "..i)
		else

			--ScriptLib.PrintLog("connect count = "..#connect)
			--ScriptLib.PrintLog("connect{"..connect[1].." , "..connect[2].." , "..connect[3].."}")
			ScriptLib.SetGadgetStateByConfigId(context, TeleportOwnerShip[i][2], GadgetState.GearStart)
			teleportname = GetTeleportNameByConfigID(context, TeleportOwnerShip[i][2])
			teleportname = teleportname.."_isActive"
			ScriptLib.SetGroupVariableValue(context, teleportname, 1)
			ScriptLib.PrintLog("connect something = "..i)
		end

	end
end

--传送玩家, 只要给到对应的Teleportid就可以
function TeleportAction(context,teleport_id)
	local related = FindRelatedTargets(context, teleport_id)
	for i=1,#related do
		if CheckIsConnected(context,teleport_id,related[i][1]) == true then 
			ScriptLib.MoveAvatarByPointArray(context, context.uid, related[i][2], related[i][3], {speed=10}, "{\"MarkType\":1}")
			return 0
		end
	end
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- Teleport #1
	{ config_id = 153001, gadget_id = 70950095, pos = { x = 2887.107, y = 269.760, z = -1325.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #2
	{ config_id = 153002, gadget_id = 70950095, pos = { x = 2908.491, y = 269.260, z = -1325.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Operator #1
	{ config_id = 153005, gadget_id = 70360001, pos = { x = 2887.116, y = 269.275, z = -1325.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #2
	{ config_id = 153006, gadget_id = 70360001, pos = { x = 2908.500, y = 269.846, z = -1326.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 153009, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2887.162, y = 270.077, z = -1326.143 } },
	-- Trigger #2
	{ config_id = 153010, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2908.537, y = 269.874, z = -1325.638 } }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1153009, name = "ENTER_REGION_153009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_153009", action = "action_EVENT_ENTER_REGION_153009", trigger_count = 0 },
	-- Trigger #2
	{ config_id = 1153010, name = "ENTER_REGION_153010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_153010", action = "action_EVENT_ENTER_REGION_153010", trigger_count = 0 },
	{ config_id = 1153013, name = "GROUP_LOAD_153013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_153013", trigger_count = 0 },
	{ config_id = 1153014, name = "SELECT_OPTION_153014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_153014", action = "action_EVENT_SELECT_OPTION_153014", trigger_count = 0 },
	-- 传送点旋转判断
	{ config_id = 1153015, name = "PLATFORM_REACH_POINT_153015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_153015", action = "action_EVENT_PLATFORM_REACH_POINT_153015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_Teleport_1_isActive", value = 0, no_refresh = false },
	{ config_id = 2, name = "gadget_Teleport_2_isActive", value = 0, no_refresh = false },
	{ config_id = 3, name = "gadget_Teleport_3_isActive", value = 0, no_refresh = false },
	{ config_id = 4, name = "gadget_Teleport_4_isActive", value = 0, no_refresh = false }
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
		gadgets = { 153001, 153002, 153005, 153006 },
		regions = { 153009, 153010 },
		triggers = { "ENTER_REGION_153009", "ENTER_REGION_153010", "GROUP_LOAD_153013", "SELECT_OPTION_153014", "PLATFORM_REACH_POINT_153015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_153009(context, evt)
	if evt.param1 ~= 153009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_153009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_153010(context, evt)
	if evt.param1 ~= 153010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_153010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153013(context, evt)
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_1, {31})
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_2, {31})
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_3, {31})
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_4, {31}) 
			return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_153014(context, evt)
			-- 判断是gadgetid 124006 option_id 31
			if defs.gadget_TeleportOperator_1 ~= evt.param1 and 
				defs.gadget_TeleportOperator_2 ~= evt.param1 and
				defs.gadget_TeleportOperator_3 ~= evt.param1 and
				defs.gadget_TeleportOperator_4 ~= evt.param1 then
				return false	
			end
			
			if 31 ~= evt.param2 then
				return false
			end
		return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_153014(context, evt)
		local localtarget
	
			for i=1,4 do
				if TeleportOwnerShip[i][1] == evt.param1 then
					localtarget = TeleportOwnerShip[i][2]
				end
			end
			ScriptLib.PrintLog("evt.gadgetid = "..evt.param1)
			ScriptLib.PrintLog("localtarget = "..localtarget)
			ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 1 }, { route_type = 0,turn_mode=true })
			return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_153015(context, evt)
			-- 判断是gadgetid 124006 option_id 31
		ScriptLib.PrintLog("Reachpoint_condition : "..evt.param1)
			if 	defs.gadget_Teleport_1 ~= evt.param1 and 
				defs.gadget_Teleport_2 ~= evt.param1 and
				defs.gadget_Teleport_3 ~= evt.param1 and
				defs.gadget_Teleport_4 ~= evt.param1 then
				return false	
			end
		
		return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_153015(context, evt)
					-- 判断是gadgetid 124006 option_id 31
					ScriptLib.PrintLog("Reachpoint_action : "..evt.param1)
			UpdateTeleportState(context)
			return 0
end