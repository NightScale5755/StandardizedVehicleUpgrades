require 'Items/Distributions'

Distributions = Distributions or {};

if getActivatedMods():contains("ProjectUpgradesFR") then

	SuburbsDistributions.all.Outfit_Mechanic = SuburbsDistributions.all.Outfit_Mechanic or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_Mechanic"].items, "Autotsar.ATAFiliTuningMag")
	table.insert(SuburbsDistributions["all"]["Outfit_Mechanic"].items, 1)

	SuburbsDistributions.all.Outfit_MetalWorker = SuburbsDistributions.all.Outfit_MetalWorker or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_MetalWorker"].items, "Autotsar.ATAFiliTuningMag")
	table.insert(SuburbsDistributions["all"]["Outfit_MetalWorker"].items, 1)

	SuburbsDistributions.all.Outfit_ConstructionWorker = SuburbsDistributions.all.Outfit_ConstructionWorker or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_ConstructionWorker"].items, "Autotsar.ATAFiliTuningMag")
	table.insert(SuburbsDistributions["all"]["Outfit_ConstructionWorker"].items, 1)

	SuburbsDistributions.all.Outfit_Redneck = SuburbsDistributions.all.Outfit_Redneck or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_Redneck"].items, "Autotsar.ATAFiliTuningMag")
	table.insert(SuburbsDistributions["all"]["Outfit_Redneck"].items, 1)

	SuburbsDistributions.all.Outfit_PrivateMilitia = SuburbsDistributions.all.Outfit_PrivateMilitia or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PrivateMilitia"].items, "Autotsar.ATAFiliTuningMag")
	table.insert(SuburbsDistributions["all"]["Outfit_PrivateMilitia"].items, 1)

	SuburbsDistributions.all.Outfit_Raider = SuburbsDistributions.all.Outfit_Raider or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_Raider"].items, "Autotsar.ATAFiliTuningMag")
	table.insert(SuburbsDistributions["all"]["Outfit_Raider"].items, 1)

	SuburbsDistributions.all.Outfit_Survivalist = SuburbsDistributions.all.Outfit_Survivalist or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_Survivalist"].items, "Autotsar.ATAFiliTuningMag")
	table.insert(SuburbsDistributions["all"]["Outfit_Survivalist"].items, 1)

end
