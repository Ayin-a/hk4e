--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---

--[[======================================
||	filename:	AnimalSeelie
||	owner: 		weiwei.sun
||	description: 	2.8海岛动物仙灵移动逻辑。 按LD配置习惯，沿用雷电飞贼的GroupVar结构(group例: 133212006)
||	LogName:	## [AnimalSeelie]
||	Protection:	
=======================================]]
--[[

local defs = {
	gadget_animal = 26001,
	pointarray_ID = 110200012,
	maxPointCount = 8,
	gadget_Reward = 26002,--完成后创生物件
	addSuite_Info = 2,--完成后创生suite
	pointInfo = {2,5,8},
	animal_state = {201, 202, 203}
}

]]

local Triggers_AnimalSeelie = {
	{ config_id = 8000001, name = "Avatar_Near_Platform", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "", action = "action_Avatar_Near_Platform", trigger_count = 0 },
	{ config_id = 8000002, name = "Platform_Reach", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_Platform_Reach", trigger_count = 0 },
	{ config_id = 8000003, name = "AnimalSeelie_Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_AnimalSeelie_Group_Load", trigger_count = 0 },
}

function LF_Initialize_Group(triggers, suites)

	for i=1, #Triggers_AnimalSeelie do
		table.insert(triggers, Triggers_AnimalSeelie[i])		
	end
	--非flow
  if (init_config.io_type ~= 1) then
    for i = 1, #suites do 
       for k,v in pairs(Triggers_AnimalSeelie) do
      	table.insert(suites[i].triggers, v.name)
      end
    end
    --是否已结束
		table.insert(variables,{ config_id = 50000001, name = "isFinished", value = 0, no_refresh = true })
		--当前在pointArray第几个点
		table.insert(variables,{ config_id = 50000002, name = "cur_point_index", value = 0, no_refresh = true })
		--下次要停在defs.pointInfo的第几个点
		table.insert(variables,{ config_id = 50000003, name = "next_index", value = 1, no_refresh = true })
  --flow
  else

		table.insert(variables,{ config_id = 50000001, name = "isFinished", value = 0, no_refresh = true })
		table.insert(variables,{ config_id = 50000002, name = "cur_point_index", value = 0, no_refresh = true })
		table.insert(variables,{ config_id = 50000003, name = "next_index", value = 1, no_refresh = true })

    for i = 1, #suite_disk do 
      for k,v in pairs(Triggers_AnimalSeelie) do
      	table.insert(suite_disk[i].triggers, v.name)
      end
      if defs.addSuite_Info == i then

      	table.insert(suite_disk[i].variables,{ config_id = 50000001, name = "isFinished", value = 1, no_refresh = true })
				table.insert(suite_disk[i].variables,{ config_id = 50000002, name = "cur_point_index", value = 0, no_refresh = true })
				table.insert(suite_disk[i].variables,{ config_id = 50000003, name = "next_index", value = 1, no_refresh = true })
      else
      	table.insert(suite_disk[i].variables,{ config_id = 50000001, name = "isFinished", value = 0, no_refresh = true })
				table.insert(suite_disk[i].variables,{ config_id = 50000002, name = "cur_point_index", value = 0, no_refresh = true })
				table.insert(suite_disk[i].variables,{ config_id = 50000003, name = "next_index", value = 1, no_refresh = true })
			end
    end
  end



end

function action_AnimalSeelie_Group_Load(context)
	ScriptLib.SetGroupVariableValue(context, "cur_point_index", 0)
	ScriptLib.SetGroupVariableValue(context, "next_index", 1)
	return 0
end

function LF_GetNextPath(context)

  local path = {}

  --当前在pointArray的第几个点  
  local cur_point = ScriptLib.GetGroupVariableValue(context, "cur_point_index")
  --范围检查 cur_point是否不在table内,则设为初始点
  if false == LF_CheckIsInTable(context, cur_point, defs.pointInfo) then
  	cur_point = defs.pointInfo[1]
  	ScriptLib.PrintContextLog(context, "## [AnimalSeelie] LF_GetNextPath: cur_point not in pointInfo!")
  end

  --下次要停在defs.pointInfo的第几个点
  local next_index = ScriptLib.GetGroupVariableValue(context, "next_index")
  if 0 > next_index then
  	next_index = 1
  end

	local stop_point = cur_point
  ScriptLib.PrintContextLog(context, "## [AnimalSeelie] LF_GetNextPath: Set path. cur_point_index@"..cur_point.." next_index@"..next_index)

  --范围检查
  if  next_index > #defs.pointInfo then

  	ScriptLib.PrintContextLog(context, "## [AnimalSeelie] LF_GetNextPath: path index overflow!")
  	--设为当前点位
  	table.insert(path, defs.pointInfo[#defs.pointInfo])
  	
  else

  	stop_point = defs.pointInfo[next_index]

	  --从起步点（当前点+1）开始，到下次停的点为止，存为一个table
	  --如果由于LD手动修改，stop_point小于起步点，则将该点直接设为目标点，没有过程点
	  if cur_point >= stop_point then 
	  	table.insert(path, stop_point)
	  else
	  	for i = cur_point + 1, stop_point do
		    table.insert(path, i)
		  end
	  end

  end
  ScriptLib.PrintContextLog(context, "## [AnimalSeelie] LF_GetNextPath: Set path. From point@"..path[1].." to point@"..stop_point)
	return path
end


function LF_MovePlatform(context)

	ScriptLib.SetPlatformPointArray(context, defs.gadget_animal, defs.pointarray_ID, LF_GetNextPath(context), { route_type = 0 })

	return 0
end

-- 到达路点时触发操作
function action_Platform_Reach(context, evt)
	--消息不是组内动物仙灵
	if defs.gadget_animal ~= evt.param1 then
		return -1
	end
	ScriptLib.PrintContextLog(context, "## [AnimalSeelie] Platform_Reach: param2@"..evt.param2.." param3@"..evt.param3)
	
	--是否到达终点
	if evt.param3 == defs.maxPointCount then
		--埋点
		ScriptLib.MarkGroupLuaAction(context, "AnimalSeelieEnd", "", {["group_id"] = base_info.group_id, ["config_id"] = 0})	
		ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_animal })
		ScriptLib.StopPlatform(context, defs.gadget_animal)
		--创生奖励
		if nil ~= defs.gadget_Reward and 0 ~= defs.gadget_Reward then 
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_Reward }) 
		end	
		if nil ~= defs.addSuite_Info and 0 ~= defs.addSuite_Info then 
			ScriptLib.SetFlowSuite(context, base_info.group_id, defs.addSuite_Info)
		end	
		return 0
	end
	--是否需要停下	
	local next = ScriptLib.GetGroupVariableValue(context, "next_index")
	if evt.param3 == defs.pointInfo[next] then
		ScriptLib.StopPlatform(context, defs.gadget_animal)
		next = next + 1
		ScriptLib.SetGroupVariableValue(context, "cur_point_index", evt.param3)
		ScriptLib.SetGroupVariableValue(context, "next_index", next)
	end
				
	return 0
end


--玩家靠近时触发操作
function action_Avatar_Near_Platform(context, evt)
	ScriptLib.PrintContextLog(context, "## [AnimalSeelie] Avatar_Near_Platform: configID@"..evt.param1)

	--不是自己Group里的飞贼
	if defs.gadget_animal ~= evt.param1 then
		return 0
	end

	--903底座状态,kill 结束
	local state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.gadget_animal)
	if state == 903 then 
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_animal })
		return 0
	end
	
	if 1 == ScriptLib.GetGroupVariableValue(context, "isFinished") then 
		return 0
	end
	if nil ~= defs.animal_state then 
		LF_SetAnimaState(context)
	end
	--埋点
	if 0 == ScriptLib.GetGroupVariableValue(context, "cur_point_index") then
		ScriptLib.MarkGroupLuaAction(context, "AnimalSeelieStart", "", {["group_id"] = base_info.group_id, ["config_id"] = evt.param1, ["animal"] = state})
	end

	LF_MovePlatform(context)

	return 0
end

function LF_SetAnimaState(context)
	local next = ScriptLib.GetGroupVariableValue(context, "next_index")
	--范围修正
	if next > #defs.animal_state then 
		next = #defs.animal_state
		ScriptLib.SetGroupVariableValue(context, "next_index", next)
		ScriptLib.PrintContextLog(context, "## [AnimalSeelie] LF_SetAnimaState: next_index overflow!. Set to@"..next)
	end
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_animal, defs.animal_state[next])
	return 0
end
--用于检查value是否在目标table中
function LF_CheckIsInTable(context, value, check_table)

	for i = 1, #check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end

LF_Initialize_Group(triggers, suites)