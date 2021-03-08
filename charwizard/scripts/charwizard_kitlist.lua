-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	createStartingKit();
end

function createStartingKit()
	CampaignRegistry.charwizard.inventorylist = {};	
	local wndSummary = Interface.findWindow("charwizard", "");	
	if CampaignRegistry.charwizard.classes then
		for _,vClass in pairs(CampaignRegistry.charwizard.classes) do
			if vClass.main then
				if vClass.name == "barbarian" or vClass.name == "enhanced barbarian" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					addEquipment("Weapon", "Martial", w1);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					addEquipment("Weapon", "Simple", w2);
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("2 Handaxes");
					w2a.name.setValue("Handaxe");
					w2a.type.setValue("Weapon");
					w2a.value.setValue(2);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.handaxe@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					local w3 = createWindow();
					w3.group_name.setValue("INCLUDED");
					w3.selection_name.setValue("AN EXPLORER'S PACK AND FOUR JAVELINS");
					w3.button_expand_equipment.setVisible(false);
					w3.selection_window.setVisible(false);
					w3.selection_name.setVisible(true);
					addItemToInventory("Weapon", "javelin", 4);
					addItemToInventory("Adventuring Gear", "explorer's pack", 1);					
				elseif vClass.name == "bard" or vClass.name == "enhanced bard" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					addEquipment("Weapon", "Simple", w1);
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Longsword");
					w1a.name.setValue("Longsword");
					w1a.type.setValue("Weapon");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.longsword@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					w1b = w1.selection_window.createWindow();
					w1b.bname.setText("Rapier");
					w1b.name.setValue("Rapier");
					w1b.type.setValue("Weapon");
					w1b.value.setValue(1);					
					w1b.shortcut.setValue("reference_equipment", "reference.equipmentdata.rapier@DD PHB Deluxe");
					w1b.shortcut.setVisible(false);
					w1.selection_window.applySort();
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("Diplomat's Pack");
					w2a.name.setValue("Diplomat's Pack");
					w2a.type.setValue("Adventuring Gear");
					w2a.value.setValue(1);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.diplomat_spack@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					w2b = w2.selection_window.createWindow();
					w2b.bname.setText("Entertainer's Pack");
					w2b.name.setValue("Entertainer's Pack");
					w2b.type.setValue("Adventuring Gear");					
					w2b.value.setValue(1);
					w2b.shortcut.setValue("reference_equipment", "reference.equipmentdata.entertainer_spack@DD PHB Deluxe");
					w2b.shortcut.setVisible(false);
					local w3 = createWindow();
					w3.group_name.setValue("CLASS CHOICE 3");
					local aMappings = LibraryData.getMappings("item");
					for _,vMapping in ipairs(aMappings) do
						for _,vItems in pairs(DB.getChildrenGlobal(vMapping)) do	
							if StringManager.trim(DB.getValue(vItems, "type", "")):lower() == "tools" then
								if StringManager.trim(DB.getValue(vItems, "subtype", "")):lower() == "musical instrument" then
									local w3i = w3.selection_window.createWindow();
									w3i.bname.setText(StringManager.capitalize(StringManager.trim(DB.getValue(vItems, "name", ""))));
									w3i.name.setValue(StringManager.capitalize(StringManager.trim(DB.getValue(vItems, "name", ""))));
									w3i.type.setValue("Adventuring Gear");									
									w3i.value.setValue(1);
									w3i.shortcut.setValue("reference_equipment", vItems.getPath());
								end
							end
						end
					end
					local w4 = createWindow();
					w4.group_name.setValue("INCLUDED");
					w4.selection_name.setValue("LEATHER ARMOR AND A DAGGER");
					w4.button_expand_equipment.setVisible(false);
					w4.selection_window.setVisible(false);
					w4.selection_name.setVisible(true);
					addItemToInventory("Armor", "leather", 1);
					addItemToInventory("Weapon", "dagger", 1);					
				elseif vClass.name == "cleric" or vClass.name == "enhanced cleric" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Mace");
					w1a.name.setValue("Mace");
					w1a.type.setValue("Weapon");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.mace@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					w1b = w1.selection_window.createWindow();
					w1b.bname.setText("Warhammer");
					w1b.name.setValue("Warhammer");
					w1b.type.setValue("Weapon");
					w1b.value.setValue(1);					
					w1b.shortcut.setValue("reference_equipment", "reference.equipmentdata.warhammer@DD PHB Deluxe");
					w1b.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("Scale Mail");
					w2a.name.setValue("Scale Mail");
					w2a.type.setValue("Armor");					
					w2a.value.setValue(1);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.scalemail@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					w2b = w2.selection_window.createWindow();
					w2b.bname.setText("Leather Armor");
					w2b.name.setValue("Leather");
					w2b.type.setValue("Armor");
					w2b.value.setValue(1);					
					w2b.shortcut.setValue("reference_equipment", "reference.equipmentdata.leather@DD PHB Deluxe");
					w2b.shortcut.setVisible(false);
					w2c = w2.selection_window.createWindow();
					w2c.bname.setText("Chain Mail");
					w2c.name.setValue("Chain Mail");
					w2c.type.setValue("Armor");
					w2c.value.setValue(1);					
					w2c.shortcut.setValue("reference_equipment", "reference.equipmentdata.chainmail@DD PHB Deluxe");
					w2c.shortcut.setVisible(false);
					local w3 = createWindow();
					w3.group_name.setValue("CLASS CHOICE 3");
					addEquipment("Weapon", "Simple", w3);
					local w4 = createWindow();
					w4.group_name.setValue("CLASS CHOICE 4");
					w4a = w4.selection_window.createWindow();
					w4a.bname.setText("Priest's Pack");
					w4a.name.setValue("Priest's Pack");
					w4a.type.setValue("Adventuring Gear");
					w4a.value.setValue(1);
					w4a.shortcut.setValue("reference_equipment", "reference.equipmentdata.priest_spack@DD PHB Deluxe");
					w4a.shortcut.setVisible(false);
					w4b = w4.selection_window.createWindow();
					w4b.bname.setText("Explorer's Pack");
					w4b.name.setValue("Explorer's Pack");
					w4b.type.setValue("Adventuring Gear");					
					w4b.value.setValue(1);
					w4b.shortcut.setValue("reference_equipment", "reference.equipmentdata.explorer_spack@DD PHB Deluxe");
					w4b.shortcut.setVisible(false);
					local w5 = createWindow();
					w5.group_name.setValue("CHOOSE HOLY SYMBOL");
					w5a = w5.selection_window.createWindow();
					w5a.bname.setText("Amulet");
					w5a.name.setValue("Amulet");
					w5a.type.setValue("Adventuring Gear");					
					w5a.value.setValue(1);
					w5a.shortcut.setValue("reference_equipment", "reference.equipmentdata.amulet@DD PHB Deluxe");
					w5a.shortcut.setVisible(false);
					w5b = w5.selection_window.createWindow();
					w5b.bname.setText("Emblem");
					w5b.name.setValue("Emblem");
					w5b.type.setValue("Adventuring Gear");
					w5b.value.setValue(1);					
					w5b.shortcut.setValue("reference_equipment", "reference.equipmentdata.emblem@DD PHB Deluxe");
					w5b.shortcut.setVisible(false);
					w5c = w5.selection_window.createWindow();
					w5c.bname.setText("Reliquary");
					w5c.name.setValue("Reliquary");
					w5c.type.setValue("Adventuring Gear");
					w5c.value.setValue(1);					
					w5c.shortcut.setValue("reference_equipment", "reference.equipmentdata.reliquary@DD PHB Deluxe");
					w5c.shortcut.setVisible(false);					
					local w6 = createWindow();
					w6.group_name.setValue("INCLUDED");
					w6.selection_name.setValue("A SHIELD");
					w6.button_expand_equipment.setVisible(false);
					w6.selection_window.setVisible(false);
					w6.selection_name.setVisible(true);
					addItemToInventory("Armor", "shield", 1);
				elseif vClass.name == "druid" or vClass.name == "enhanced druid" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					addEquipment("Weapon", "Simple", w1);
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Shield");
					w1a.name.setValue("Shield");
					w1a.type.setValue("Armor");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.shield@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					addEquipment("Weapon", "Simple", w2);
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("Scimitar");
					w2a.name.setValue("Scimitar");
					w2a.type.setValue("Weapon");					
					w2a.value.setValue(1);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.scimitar@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					local w3 = createWindow();
					w3.group_name.setValue("CHOOSE DRUIDIC FOCUS");
					w3a = w3.selection_window.createWindow();
					w3a.bname.setText("Sprig of Mistletoe");
					w3a.name.setValue("Sprig of Mistletoe");
					w3a.type.setValue("Adventuring Gear");					
					w3a.value.setValue(1);
					w3a.shortcut.setValue("reference_equipment", "reference.equipmentdata.sprigofmistletoe@DD PHB Deluxe");
					w3a.shortcut.setVisible(false);
					w3b = w3.selection_window.createWindow();
					w3b.bname.setText("Totem");
					w3b.name.setValue("Totem");
					w3b.type.setValue("Adventuring Gear");
					w3b.value.setValue(1);					
					w3b.shortcut.setValue("reference_equipment", "reference.equipmentdata.totem@DD PHB Deluxe");
					w3b.shortcut.setVisible(false);
					w3c = w3.selection_window.createWindow();
					w3c.bname.setText("Wooden Staff");
					w3c.name.setValue("Wooden Staff");
					w3c.type.setValue("Adventuring Gear");
					w3c.value.setValue(1);					
					w3c.shortcut.setValue("reference_equipment", "reference.equipmentdata.woodenstaff@DD PHB Deluxe");
					w3c.shortcut.setVisible(false);
					w3d = w3.selection_window.createWindow();
					w3d.bname.setText("Yew Wand");
					w3d.name.setValue("Yew Wand");
					w3d.type.setValue("Adventuring Gear");
					w3d.value.setValue(1);					
					w3d.shortcut.setValue("reference_equipment", "reference.equipmentdata.yewwand@DD PHB Deluxe");
					w3d.shortcut.setVisible(false);
					local w4 = createWindow();
					w4.group_name.setValue("INCLUDED");
					w4.selection_name.setValue("LEATHER ARMOR AND AN EXPLORER'S PACK");
					w4.button_expand_equipment.setVisible(false);
					w4.selection_window.setVisible(false);
					w4.selection_name.setVisible(true);
					addItemToInventory("Armor", "leather", 1);
					addItemToInventory("Adventuring Gear", "explorer's pack", 1);					
				elseif vClass.name == "fighter" or vClass.name == "enhanced fighter"  or vClass.name == "sidekick warrior" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Chain Mail");
					w1a.name.setValue("Chain Mail");
					w1a.type.setValue("Armor");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.chainmail@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					w1b = w1.selection_window.createWindow();
					w1b.bname.setText("Leather");
					w1b.name.setValue("Leather");
					w1b.type.setValue("Armor");
					w1b.value.setValue(1);					
					w1b.shortcut.setValue("reference_equipment", "reference.equipmentdata.leather@DD PHB Deluxe");
					w1b.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					addEquipment("Weapon", "Martial", w2);
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("Shield");
					w2a.name.setValue("Shield");
					w2a.type.setValue("Armor");					
					w2a.value.setValue(1);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.shield@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					local w3 = createWindow();
					w3.group_name.setValue("CLASS CHOICE 3");
					addEquipment("Weapon", "Martial", w3);					
					local w4 = createWindow();
					w4.group_name.setValue("CLASS CHOICE 4");
					w4a = w4.selection_window.createWindow();
					w4a.bname.setText("Crossbow, Light");
					w4a.name.setValue("Crossbow, Light");
					w4a.type.setValue("Weapon");
					w4a.value.setValue(1);
					w4a.shortcut.setValue("reference_equipment", "reference.equipmentdata.lightcrossbow@DD PHB Deluxe");
					w4a.shortcut.setVisible(false);
					w4b = w4.selection_window.createWindow();
					w4b.bname.setText("2 Handaxes");
					w4b.name.setValue("Handaxe");
					w4b.type.setValue("Weapon");
					w4b.value.setValue(2);
					w4b.shortcut.setValue("reference_equipment", "reference.equipmentdata.handaxe@DD PHB Deluxe");
					w4b.shortcut.setVisible(false);
					local w5 = createWindow();
					w5.group_name.setValue("CLASS CHOICE 5");
					w5a = w5.selection_window.createWindow();
					w5a.bname.setText("Dungeoneer's Pack");
					w5a.name.setValue("Dungeoneer's Pack");
					w5a.type.setValue("Adventuring Gear");
					w5a.value.setValue(1);
					w5a.shortcut.setValue("reference_equipment", "reference.equipmentdata.dungeoneer_spack@DD PHB Deluxe");
					w5a.shortcut.setVisible(false);
					w5b = w5.selection_window.createWindow();
					w5b.bname.setText("Explorer's Pack");
					w5b.name.setValue("Explorer's Pack");
					w5b.type.setValue("Adventuring Gear");					
					w5b.value.setValue(1);
					w5b.shortcut.setValue("reference_equipment", "reference.equipmentdata.explorer_spack@DD PHB Deluxe");
					w5b.shortcut.setVisible(false);
				elseif vClass.name == "monk" or vClass.name == "enhanced monk" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					addEquipment("Weapon", "Simple", w1);
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Shortsword");
					w1a.name.setValue("Shortsword");
					w1a.type.setValue("Weapon");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.shortsword@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("Dungeoneer's Pack");
					w2a.name.setValue("Dungeoneer's Pack");
					w2a.type.setValue("Adventuring Gear");
					w2a.value.setValue(1);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.dungeoneer_spack@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					w2b = w2.selection_window.createWindow();
					w2b.bname.setText("Explorer's Pack");
					w2b.name.setValue("Explorer's Pack");
					w2b.type.setValue("Adventuring Gear");					
					w2b.value.setValue(1);
					w2b.shortcut.setValue("reference_equipment", "reference.equipmentdata.explorer_spack@DD PHB Deluxe");
					w2b.shortcut.setVisible(false);
					local w3 = createWindow();
					w3.group_name.setValue("INCLUDED");
					w3.selection_name.setValue("10 DARTS");
					w3.button_expand_equipment.setVisible(false);
					w3.selection_window.setVisible(false);
					w3.selection_name.setVisible(true);
					addItemToInventory("Weapon", "dart", 10);
				elseif vClass.name == "paladin" or vClass.name == "enhanced paladin" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					addEquipment("Weapon", "Martial", w1);
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Shield");
					w1a.name.setValue("Shield");
					w1a.type.setValue("Armor");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.shield@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					addEquipment("Weapon", "Martial", w2);					
					local w3 = createWindow();
					w3.group_name.setValue("CLASS CHOICE 3");
					addEquipment("Weapon", "Simple", w3);
					w3a = w3.selection_window.createWindow();
					w3a.bname.setText("5 Javelins");
					w3a.name.setValue("Javelin");
					w3a.type.setValue("Weapon");
					w3a.value.setValue(5);
					w3a.shortcut.setValue("reference_equipment", "reference.equipmentdata.javelin@DD PHB Deluxe");
					w3a.shortcut.setVisible(false);
					local w4 = createWindow();
					w4.group_name.setValue("CLASS CHOICE 4");
					w4a = w4.selection_window.createWindow();
					w4a.bname.setText("Priest's Pack");
					w4a.name.setValue("Priest's Pack");
					w4a.type.setValue("Adventuring Gear");
					w4a.value.setValue(1);
					w4a.shortcut.setValue("reference_equipment", "reference.equipmentdata.priest_spack@DD PHB Deluxe");
					w4a.shortcut.setVisible(false);
					w4b = w4.selection_window.createWindow();
					w4b.bname.setText("Explorer's Pack");
					w4b.name.setValue("Explorer's Pack");
					w4b.type.setValue("Adventuring Gear");					
					w4b.value.setValue(1);
					w4b.shortcut.setValue("reference_equipment", "reference.equipmentdata.explorer_spack@DD PHB Deluxe");
					w4b.shortcut.setVisible(false);
					local w5 = createWindow();
					w5.group_name.setValue("CHOOSE HOLY SYMBOL");
					w5a = w5.selection_window.createWindow();
					w5a.bname.setText("Amulet");
					w5a.name.setValue("Amulet");
					w5a.type.setValue("Adventuring Gear");					
					w5a.value.setValue(1);
					w5a.shortcut.setValue("reference_equipment", "reference.equipmentdata.amulet@DD PHB Deluxe");
					w5a.shortcut.setVisible(false);
					w5b = w5.selection_window.createWindow();
					w5b.bname.setText("Emblem");
					w5b.name.setValue("Emblem");
					w5b.type.setValue("Adventuring Gear");
					w5b.value.setValue(1);					
					w5b.shortcut.setValue("reference_equipment", "reference.equipmentdata.emblem@DD PHB Deluxe");
					w5b.shortcut.setVisible(false);
					w5c = w5.selection_window.createWindow();
					w5c.bname.setText("Reliquary");
					w5c.name.setValue("Reliquary");
					w5c.type.setValue("Adventuring Gear");
					w5c.value.setValue(1);					
					w5c.shortcut.setValue("reference_equipment", "reference.equipmentdata.reliquary@DD PHB Deluxe");
					w5c.shortcut.setVisible(false);					
					local w6 = createWindow();
					w6.group_name.setValue("INCLUDED");
					w6.selection_name.setValue("CHAIN MAIL");
					w6.button_expand_equipment.setVisible(false);
					w6.selection_window.setVisible(false);
					w6.selection_name.setVisible(true);
					addItemToInventory("Armor", "chain mail", 1);
				elseif vClass.name == "ranger" or vClass.name == "enhanced ranger" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Scale Mail");
					w1a.name.setValue("Scale Mail");
					w1a.type.setValue("Armor");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.scalemail@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					w1b = w1.selection_window.createWindow();
					w1b.bname.setText("Leather");
					w1b.name.setValue("Leather");
					w1b.type.setValue("Armor");
					w1b.value.setValue(1);					
					w1b.shortcut.setValue("reference_equipment", "reference.equipmentdata.leather@DD PHB Deluxe");
					w1b.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					addEquipment("Weapon", "Simple", w2);
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("Shortsword");
					w2a.name.setValue("Shortsword");
					w2a.type.setValue("Weapon");					
					w2a.value.setValue(1);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.shortsword@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					local w3 = createWindow();
					w3.group_name.setValue("CLASS CHOICE 3");
					addEquipment("Weapon", "Simple", w3);
					w3a = w3.selection_window.createWindow();
					w3a.bname.setText("Shortsword");
					w3a.name.setValue("Shortsword");
					w3a.type.setValue("Weapon");					
					w3a.value.setValue(1);
					w3a.shortcut.setValue("reference_equipment", "reference.equipmentdata.shortsword@DD PHB Deluxe");
					w3a.shortcut.setVisible(false);
					local w4 = createWindow();
					w4.group_name.setValue("CLASS CHOICE 4");
					w4a = w4.selection_window.createWindow();
					w4a.bname.setText("Dungeoneer's Pack");
					w4a.name.setValue("Dungeoneer's Pack");
					w4a.type.setValue("Adventuring Gear");
					w4a.value.setValue(1);
					w4a.shortcut.setValue("reference_equipment", "reference.equipmentdata.dungeoneer_spack@DD PHB Deluxe");
					w4a.shortcut.setVisible(false);
					w4b = w4.selection_window.createWindow();
					w4b.bname.setText("Explorer's Pack");
					w4b.name.setValue("Explorer's Pack");
					w4b.type.setValue("Adventuring Gear");					
					w4b.value.setValue(1);
					w4b.shortcut.setValue("reference_equipment", "reference.equipmentdata.explorer_spack@DD PHB Deluxe");
					w4b.shortcut.setVisible(false);
					local w5 = createWindow();
					w5.group_name.setValue("INCLUDED");
					w5.selection_name.setValue("LONGBOW");
					w5.button_expand_equipment.setVisible(false);
					w5.selection_window.setVisible(false);
					w5.selection_name.setVisible(true);
					addItemToInventory("Weapon", "longbow", 1);
				elseif vClass.name == "rogue" or vClass.name == "enhanced rogue" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Rapier");
					w1a.name.setValue("Rapier");
					w1a.type.setValue("Weapon");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.rapier@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					w1b = w1.selection_window.createWindow();
					w1b.bname.setText("Shortsword");
					w1b.name.setValue("Shortsword");
					w1b.type.setValue("Weapon");
					w1b.value.setValue(1);					
					w1b.shortcut.setValue("reference_equipment", "reference.equipmentdata.shortsword@DD PHB Deluxe");
					w1b.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("Shortbow");
					w2a.name.setValue("Shortbow");
					w2a.type.setValue("Weapon");					
					w2a.value.setValue(1);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.shortbow@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					w2b = w2.selection_window.createWindow();
					w2b.bname.setText("Shortsword");
					w2b.name.setValue("Shortsword");
					w2b.type.setValue("Weapon");
					w2b.value.setValue(1);					
					w2b.shortcut.setValue("reference_equipment", "reference.equipmentdata.shortsword@DD PHB Deluxe");
					w2b.shortcut.setVisible(false);
					local w3 = createWindow();
					w3.group_name.setValue("CLASS CHOICE 3");
					w3a = w3.selection_window.createWindow();
					w3a.bname.setText("Dungeoneer's Pack");
					w3a.name.setValue("Dungeoneer's Pack");
					w3a.type.setValue("Adventuring Gear");
					w3a.value.setValue(1);
					w3a.shortcut.setValue("reference_equipment", "reference.equipmentdata.dungeoneer_spack@DD PHB Deluxe");
					w3a.shortcut.setVisible(false);
					w3b = w3.selection_window.createWindow();
					w3b.bname.setText("Explorer's Pack");
					w3b.name.setValue("Explorer's Pack");
					w3b.type.setValue("Adventuring Gear");					
					w3b.value.setValue(1);
					w3b.shortcut.setValue("reference_equipment", "reference.equipmentdata.explorer_spack@DD PHB Deluxe");
					w3b.shortcut.setVisible(false);
					w3c = w3.selection_window.createWindow();
					w3c.bname.setText("Burglar's Pack");
					w3c.name.setValue("Burglar's Pack");
					w3c.type.setValue("Adventuring Gear");					
					w3c.value.setValue(1);
					w3c.shortcut.setValue("reference_equipment", "reference.equipmentdata.burglar_spack@DD PHB Deluxe");
					w3c.shortcut.setVisible(false);
					local w4 = createWindow();
					w4.group_name.setValue("INCLUDED");
					w4.selection_name.setValue("LEATHER, TWO DAGGERS, AND THIEVES' TOOLS");
					w4.button_expand_equipment.setVisible(false);
					w4.selection_window.setVisible(false);
					w4.selection_name.setVisible(true);
					addItemToInventory("Armor", "leather", 1);
					addItemToInventory("Weapon", "dagger", 2);
					addItemToInventory("Adventuring Gear", "thieves' tools", 1);
				elseif vClass.name == "sorcerer" or vClass.name == "warlock" or vClass.name == "enhanced sorcerer" or vClass.name == "enhanced warlock" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					addEquipment("Weapon", "Simple", w1);
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Crossbow, Light");
					w1a.name.setValue("Crossbow, Light");
					w1a.type.setValue("Weapon");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.lightcrossbow@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("Dungeoneer's Pack");
					w2a.name.setValue("Dungeoneer's Pack");
					w2a.type.setValue("Adventuring Gear");
					w2a.value.setValue(1);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.dungeoneer_spack@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					w2b = w2.selection_window.createWindow();
					w2b.bname.setText("Explorer's Pack");
					w2b.name.setValue("Explorer's Pack");
					w2b.type.setValue("Adventuring Gear");					
					w2b.value.setValue(1);
					w2b.shortcut.setValue("reference_equipment", "reference.equipmentdata.explorer_spack@DD PHB Deluxe");
					w2b.shortcut.setVisible(false);					
					local w3 = createWindow();
					w3.group_name.setValue("CHOOSE ARCANE FOCUS OR COMPONENT POUCH");
					w3a = w3.selection_window.createWindow();
					w3a.bname.setText("Crystal");
					w3a.name.setValue("Crystal");
					w3a.type.setValue("Adventuring Gear");					
					w3a.value.setValue(1);
					w3a.shortcut.setValue("reference_equipment", "reference.equipmentdata.crystal@DD PHB Deluxe");
					w3a.shortcut.setVisible(false);
					w3b = w3.selection_window.createWindow();
					w3b.bname.setText("Orb");
					w3b.name.setValue("Orb");
					w3b.type.setValue("Adventuring Gear");
					w3b.value.setValue(1);					
					w3b.shortcut.setValue("reference_equipment", "reference.equipmentdata.orb@DD PHB Deluxe");
					w3b.shortcut.setVisible(false);
					w3c = w3.selection_window.createWindow();
					w3c.bname.setText("Rod");
					w3c.name.setValue("Rod");
					w3c.type.setValue("Adventuring Gear");
					w3c.value.setValue(1);					
					w3c.shortcut.setValue("reference_equipment", "reference.equipmentdata.rod@DD PHB Deluxe");
					w3c.shortcut.setVisible(false);
					w3d = w3.selection_window.createWindow();
					w3d.bname.setText("Staff");
					w3d.name.setValue("Staff");
					w3d.type.setValue("Adventuring Gear");
					w3d.value.setValue(1);					
					w3d.shortcut.setValue("reference_equipment", "reference.equipmentdata.staff@DD PHB Deluxe");
					w3d.shortcut.setVisible(false);
					w3e = w3.selection_window.createWindow();
					w3e.bname.setText("Wand");
					w3e.name.setValue("Wand");
					w3e.type.setValue("Adventuring Gear");
					w3e.value.setValue(1);					
					w3e.shortcut.setValue("reference_equipment", "reference.equipmentdata.wand@DD PHB Deluxe");
					w3e.shortcut.setVisible(false);
					w3f = w3.selection_window.createWindow();
					w3f.bname.setText("Component Pouch");
					w3f.name.setValue("Component Pouch");
					w3f.type.setValue("Adventuring Gear");
					w3f.value.setValue(1);					
					w3f.shortcut.setValue("reference_equipment", "reference.equipmentdata.componentpouch@DD PHB Deluxe");
					w3f.shortcut.setVisible(false);
					local w4 = createWindow();
					w4.group_name.setValue("INCLUDED");
					w4.selection_name.setValue("TWO DAGGERS");
					w4.button_expand_equipment.setVisible(false);
					w4.selection_window.setVisible(false);
					w4.selection_name.setVisible(true);
					addItemToInventory("Weapon", "dagger", 2);
				elseif vClass.name == "wizard" or vClass.name == "enhanced wizard" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Quarterstaff");
					w1a.name.setValue("Quarterstaff");
					w1a.type.setValue("Weapon");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.quarterstaff@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					w1b = w1.selection_window.createWindow();
					w1b.bname.setText("Dagger");
					w1b.name.setValue("Dagger");
					w1b.type.setValue("Weapon");
					w1b.value.setValue(1);					
					w1b.shortcut.setValue("reference_equipment", "reference.equipmentdata.dagger@DD PHB Deluxe");
					w1b.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					w2a = w2.selection_window.createWindow();
					w2a.bname.setText("Scholar's Pack");
					wa.name.setValue("Scholar's Pack");
					w2a.type.setValue("Adventuring Gear");
					w2a.value.setValue(1);
					w2a.shortcut.setValue("reference_equipment", "reference.equipmentdata.scholar_spack@DD PHB Deluxe");
					w2a.shortcut.setVisible(false);
					w2b = w2.selection_window.createWindow();
					w2b.bname.setText("Explorer's Pack");
					w2b.name.setValue("Explorer's Pack");
					w2b.type.setValue("Adventuring Gear");					
					w2b.value.setValue(1);
					w2b.shortcut.setValue("reference_equipment", "reference.equipmentdata.explorer_spack@DD PHB Deluxe");
					w2b.shortcut.setVisible(false);					
					local w3 = createWindow();
					w3.group_name.setValue("CHOOSE ARCANE FOCUS OR COMPONENT POUCH");
					w3a = w3.selection_window.createWindow();
					w3a.bname.setText("Crystal");
					w3a.name.setValue("Crystal");
					w3a.type.setValue("Adventuring Gear");					
					w3a.value.setValue(1);
					w3a.shortcut.setValue("reference_equipment", "reference.equipmentdata.crystal@DD PHB Deluxe");
					w3a.shortcut.setVisible(false);
					w3b = w3.selection_window.createWindow();
					w3b.bname.setText("Orb");
					w3b.name.setValue("Orb");
					w3b.type.setValue("Adventuring Gear");
					w3b.value.setValue(1);					
					w3b.shortcut.setValue("reference_equipment", "reference.equipmentdata.orb@DD PHB Deluxe");
					w3b.shortcut.setVisible(false);
					w3c = w3.selection_window.createWindow();
					w3c.bname.setText("Rod");
					w3c.name.setValue("Rod");
					w3c.type.setValue("Adventuring Gear");
					w3c.value.setValue(1);					
					w3c.shortcut.setValue("reference_equipment", "reference.equipmentdata.rod@DD PHB Deluxe");
					w3c.shortcut.setVisible(false);
					w3d = w3.selection_window.createWindow();
					w3d.bname.setText("Staff");
					w3d.name.setValue("Staff");
					w3d.type.setValue("Adventuring Gear");
					w3d.value.setValue(1);					
					w3d.shortcut.setValue("reference_equipment", "reference.equipmentdata.staff@DD PHB Deluxe");
					w3d.shortcut.setVisible(false);
					w3e = w3.selection_window.createWindow();
					w3e.bname.setText("Wand");
					w3e.name.setValue("Wand");
					w3e.type.setValue("Adventuring Gear");
					w3e.value.setValue(1);					
					w3e.shortcut.setValue("reference_equipment", "reference.equipmentdata.wand@DD PHB Deluxe");
					w3e.shortcut.setVisible(false);
					w3f = w3.selection_window.createWindow();
					w3f.bname.setText("Component Pouch");
					w3f.name.setValue("Component Pouch");
					w3f.type.setValue("Adventuring Gear");
					w3f.value.setValue(1);					
					w3f.shortcut.setValue("reference_equipment", "reference.equipmentdata.componentpouch@DD PHB Deluxe");
					w3f.shortcut.setVisible(false);
					local w4 = createWindow();
					w4.group_name.setValue("INCLUDED");
					w4.selection_name.setValue("A SPELLBOOK");
					w4.button_expand_equipment.setVisible(false);
					w4.selection_window.setVisible(false);
					w4.selection_name.setVisible(true);
					addItemToInventory("Adventuring Gear", "spellbook", 1);
				elseif vClass.name == "artificer" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					addEquipment("Weapon", "Simple", w1);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					addEquipment("Weapon", "Simple", w2);
					local w3 = createWindow();
					w3.group_name.setValue("CLASS CHOICE 3");
					w3a = w3.selection_window.createWindow();
					w3a.bname.setText("Studded Leather");
					w3a.name.setValue("Studded Leather");
					w3a.type.setValue("Armor");
					w3a.value.setValue(1);
					w3a.shortcut.setValue("reference_equipment", "reference.equipmentdata.studdedleather@DD PHB Deluxe");
					w3a.shortcut.setVisible(false);
					w3b = w3.selection_window.createWindow();
					w3b.bname.setText("Scale Mail");
					w3b.name.setValue("Scale Mail");
					w3b.type.setValue("Armor");					
					w3b.value.setValue(1);
					w3b.shortcut.setValue("reference_equipment", "reference.equipmentdata.scalemail@DD PHB Deluxe");
					w3b.shortcut.setVisible(false);
					local w4 = createWindow();
					w4.group_name.setValue("INCLUDED");
					w4.selection_name.setValue("LIGHT CROSSBOW, 20 BOLTS, THIEVES' TOOLS, DUNGEONEER'S PACK");
					w4.button_expand_equipment.setVisible(false);
					w4.selection_window.setVisible(false);
					w4.selection_name.setVisible(true);
					addItemToInventory("Adventuring Gear", "dungeoneer's pack", 1);
					addItemToInventory("Weapon", "crossbow, light", 1);
					addItemToInventory("Adventuring Gear", "thieves' tools", 1);
				elseif vClass.name == "sidekick expert" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Leather");
					w1a.name.setValue("Leather");
					w1a.type.setValue("Armor");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.leather@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					w1b = w1.selection_window.createWindow();
					w1b.bname.setText("Padded");
					w1b.name.setValue("Padded");
					w1b.type.setValue("Armor");
					w1b.value.setValue(1);					
					w1b.shortcut.setValue("reference_equipment", "reference.equipmentdata.padded@DD PHB Deluxe");
					w1b.shortcut.setVisible(false);
					w1c = w1.selection_window.createWindow();
					w1c.bname.setText("Studded Leather");
					w1c.name.setValue("Studded Leather");
					w1c.type.setValue("Armor");
					w1c.value.setValue(1);					
					w1c.shortcut.setValue("reference_equipment", "reference.equipmentdata.studdedleather@DD PHB Deluxe");
					w1c.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					addEquipment("Weapon", "Simple", w2);
					local w3 = createWindow();
					w3.group_name.setValue("CLASS CHOICE 3");
					w3a = w3.selection_window.createWindow();
					w3a.bname.setText("Crossbow, Light");
					w3a.name.setValue("Crossbow, Light");
					w3a.type.setValue("Weapon");
					w3a.value.setValue(1);
					w3a.shortcut.setValue("reference_equipment", "reference.equipmentdata.lightcrossbow@DD PHB Deluxe");
					w3a.shortcut.setVisible(false);
					w3b = w3.selection_window.createWindow();
					w3b.bname.setText("2 Handaxes");
					w3b.name.setValue("Handaxe");
					w3b.type.setValue("Weapon");
					w3b.value.setValue(2);
					w3b.shortcut.setValue("reference_equipment", "reference.equipmentdata.handaxe@DD PHB Deluxe");
					w3b.shortcut.setVisible(false);
					local w4 = createWindow();
					w4.group_name.setValue("CLASS CHOICE 4");
					w4a = w4.selection_window.createWindow();
					w4a.bname.setText("Dungeoneer's Pack");
					w4a.name.setValue("Dungeoneer's Pack");
					w4a.type.setValue("Adventuring Gear");
					w4a.value.setValue(1);
					w4a.shortcut.setValue("reference_equipment", "reference.equipmentdata.dungeoneer_spack@DD PHB Deluxe");
					w4a.shortcut.setVisible(false);
					w4b = w4.selection_window.createWindow();
					w4b.bname.setText("Explorer's Pack");
					w4b.name.setValue("Explorer's Pack");
					w4b.type.setValue("Adventuring Gear");					
					w4b.value.setValue(1);
					w4b.shortcut.setValue("reference_equipment", "reference.equipmentdata.explorer_spack@DD PHB Deluxe");
					w4b.shortcut.setVisible(false);
				elseif vClass.name == "sidekick spellcaster" then
					local w1 = createWindow();
					w1.group_name.setValue("CLASS CHOICE 1");
					w1a = w1.selection_window.createWindow();
					w1a.bname.setText("Leather");
					w1a.name.setValue("Leather");
					w1a.type.setValue("Armor");					
					w1a.value.setValue(1);
					w1a.shortcut.setValue("reference_equipment", "reference.equipmentdata.leather@DD PHB Deluxe");
					w1a.shortcut.setVisible(false);
					w1b = w1.selection_window.createWindow();
					w1b.bname.setText("Padded");
					w1b.name.setValue("Padded");
					w1b.type.setValue("Armor");
					w1b.value.setValue(1);					
					w1b.shortcut.setValue("reference_equipment", "reference.equipmentdata.padded@DD PHB Deluxe");
					w1b.shortcut.setVisible(false);
					w1c = w1.selection_window.createWindow();
					w1c.bname.setText("Studded Leather");
					w1c.name.setValue("Studded Leather");
					w1c.type.setValue("Armor");
					w1c.value.setValue(1);					
					w1c.shortcut.setValue("reference_equipment", "reference.equipmentdata.studdedleather@DD PHB Deluxe");
					w1c.shortcut.setVisible(false);
					local w2 = createWindow();
					w2.group_name.setValue("CLASS CHOICE 2");
					addEquipment("Weapon", "Simple", w2);
					local w3 = createWindow();
					w3.group_name.setValue("CLASS CHOICE 3");
					w3a = w3.selection_window.createWindow();
					w3a.bname.setText("Crossbow, Light");
					w3a.name.setValue("Crossbow, Light");
					w3a.type.setValue("Weapon");
					w3a.value.setValue(1);
					w3a.shortcut.setValue("reference_equipment", "reference.equipmentdata.lightcrossbow@DD PHB Deluxe");
					w3a.shortcut.setVisible(false);
					w3b = w3.selection_window.createWindow();
					w3b.bname.setText("2 Handaxes");
					w3b.name.setValue("Handaxe");
					w3b.type.setValue("Weapon");
					w3b.value.setValue(2);
					w3b.shortcut.setValue("reference_equipment", "reference.equipmentdata.handaxe@DD PHB Deluxe");
					w3b.shortcut.setVisible(false);
					local w4 = createWindow();
					w4.group_name.setValue("CLASS CHOICE 3");
					w4a = w4.selection_window.createWindow();
					w4a.bname.setText("Scholar's Pack");
					w4a.name.setValue("Scholar's Pack");
					w4a.type.setValue("Adventuring Gear");
					w4a.value.setValue(1);
					w4a.shortcut.setValue("reference_equipment", "reference.equipmentdata.scholar_spack@DD PHB Deluxe");
					w4a.shortcut.setVisible(false);
					w4b = w4.selection_window.createWindow();
					w4b.bname.setText("Priest's Pack");
					w4b.name.setValue("Priest's Pack");
					w4b.type.setValue("Adventuring Gear");					
					w4b.value.setValue(1);
					w4b.shortcut.setValue("reference_equipment", "reference.equipmentdata.priest_spack@DD PHB Deluxe");
					w4b.shortcut.setVisible(false);
				else
					--parseCustomKit();
				end

			end
		end
	end
	parseBackground();
end

function parseCustomKit()
	local aEquipmentChoices = {};
	local aMappings = LibraryData.getMappings("class");
	if CampaignRegistry.charwizard.classes then
		for _,vClass in pairs(CampaignRegistry.charwizard.classes) do
			if vClass.main then
				local nodeClass = DB.findNode(vClass.record);
				for _,vMapping in ipairs(aMappings) do				
					for _,vDBClass in pairs(DB.getChildrenGlobal(vMapping)) do
						if nodeClass == vDBClass then
							local aChoiceEquipment = {};
							local aEquipmentGroups = {};
							local sEquipmentText = "";
							local sChoiceEquipment = "";
							local sText = DB.getText(vDBClass, "text", "");
							local sEquipment = string.match(sText, " background[:;](.+)Link:");
							sEquipment = string.gsub(sEquipment, "%*", "1");
							sEquipment = string.gsub(sEquipment, " or ", "");
							sEquipment = string.gsub(sEquipment, "%(a%) ", "");
							sEquipment = string.gsub(sEquipment, "%(b%) ", ",");
							sEquipment = string.gsub(sEquipment, "%(c%) ", ",");
							sEquipment = string.gsub(sEquipment, "Link(.+)", "");

							for s in string.gmatch(sEquipment, "%d([%a%s%p]+)") do
								table.insert(aEquipmentGroups, s);
							end
							
							for _,vEquipmentGroup in pairs(aEquipmentGroups) do
								for s in string.gmatch(vEquipmentGroup, "(%a[%a%s'']+)%,?") do
									table.insert(aChoiceEquipment, s);
								end
							end

							local nGroupNumber = 1;
							for _,vEquipment in pairs(aEquipmentGroups) do
								local w = createWindow();
								if string.match(vEquipment, " and ") then
									w.group_name.setValue("INCLUDED");
								else
									w.group_name.setValue("CLASS CHOICE " .. nGroupNumber);
								end
								nGroupNumber = nGroupNumber + 1;
								for s in string.gmatch(vEquipment, "(%a[%a%s'']+)%,?") do
									if string.match(s, "any") then
										if string.match(s, "martial melee weapon") then
											addEquipment("Weapon", "Martial", w);
										end
										if string.match(s, "martial weapon") then
											addEquipment("Weapon", "Martial", w);
											addEquipment("Weapon", "Martial Ranged", w);											
										end
										if string.match(s, "simple weapon") then
											addEquipment("Weapon", "Simple", w);
										end
									end
									if string.match(s, " and ") then
										s = string.gsub(s, "[Aa]n ", "");
										s = string.gsub(s, "[Aa] ", "");
										s = string.gsub(s, " [Aa]rmor", "")
										sAutomatic = string.gsub(s, " and ", ",");
										w.selection_name.setValue(string.upper(s));
										w.button_expand_equipment.setVisible(false);
										w.selection_window.setVisible(false);
										w.selection_name.setVisible(true);												
										for sAutoItem in string.gmatch(sAutomatic, "(%a[%a%s'']+)%,?") do
											local nCount = 1;
											if string.match(sAutoItem, "four ") then
												sAutoItem = string.gsub(sAutoItem, "four ", "");
												nCount = 4;
											elseif string.match(sAutoItem, "three ") then
												sAutoItem = string.gsub(sAutoItem, "three ", "");											
												nCount = 3;
											elseif string.match(sAutoItem, "two ") then
												sAutoItem = string.gsub(sAutoItem, "two ", "");											
												nCount = 2;
											end											
											if nCount > 1 then
												sAutoItem = sAutoItem:sub(1, -2);
												sAutoItem = sAutoItem:sub(1, #sAutoItem -2)
											end
											if CampaignRegistry.charwizard.inventorylist then
												addItemToInventory("Adventuring Gear", sAutoItem, nCount);
												addItemToInventory("Weapon", sAutoItem, nCount);
												addItemToInventory("Armor", sAutoItem, nCount);
											else
												CampaignRegistry.charwizard.inventorylist = {};
												addItemToInventory("Adventuring Gear", sAutoItem, nCount);
												addItemToInventory("Weapon", sAutoItem, nCount);
												addItemToInventory("Armor", sAutoItem, nCount);
											end
											w.windowlist.window.itemlist.createWindow();
										end
									end
								end								
							end
						end
					end
				end
			end
		end
	end
end

function parseBackground()
	local aRPItems = {};
	local aMappings = LibraryData.getMappings("background");
	if CampaignRegistry.charwizard.background then
		local nodeBackground = DB.findNode(CampaignRegistry.charwizard.background.record);
		local sText = DB.getText(nodeBackground, "text", "");
		local sEquipment = string.match(sText, "Equipment[:;](.+)Features");

		-- FIND RP TEXT AND STORE IT IN TABLE TO MAKE RP ITEM IN INVENTORY LATER
		if sEquipment and sEquipment ~= "" then
			if string.match(sEquipment, "tools of the con of your choice") then
				local sRPText = sEquipment:match("%((.+)%)");
				if sRPText and sRPText ~= "" then
					table.insert(aRPItems, { name = "Tools of the Con", record = "reference.equipmentdata.custom@DD PHB Deluxe", desc = sRPText });
					sEquipment = string.gsub(sEquipment, " tools of the con of your choice %((.+)%)", "");
					createCustomInventoryItem(aRPItems);
				end
			end
			if string.match(sEquipment, "the favor of an admirer") then
				local sRPText = sEquipment:match("the favor of an admirer %((.+)%)");
				if sRPText and sRPText ~= "" then
					table.insert(aRPItems, { name = "The Favor of an Admirer", record = "reference.equipmentdata.custom@DD PHB Deluxe", desc = sRPText });
					sEquipment = string.gsub(sEquipment, " the favor of an admirer %((.+)%)", "");
					createCustomInventoryItem(aRPItems);
				end
			end
			if string.match(sEquipment, "a trophy taken from a fallen enemy") then
				local sRPText = sEquipment:match("a trophy taken from a fallen enemy %((.+)%)");
				if sRPText and sRPText ~= "" then
					table.insert(aRPItems, { name = "Trophy from Fallen Enemy", record = "reference.equipmentdata.custom@DD PHB Deluxe", desc = sRPText });
					sEquipment = string.gsub(sEquipment, " a trophy taken from a fallen enemy %((.+)%)", "");
					createCustomInventoryItem(aRPItems);					
				end
			end				
		end

		for vItem in string.gmatch(sEquipment, "([^,]+)") do 
			if vItem then
				vItem = string.gsub(vItem, "[ Aa]n ", "");
				vItem = string.gsub(vItem, "[ Aa] ", "");
			end

			local nGold = 0;
			
			if vItem then
				if string.match(vItem, "pouch containing") or string.match(vItem, "purse containing") then
					nGold = tonumber(string.match(vItem, "(%d+)"));
					addItemToInventory("Adventuring Gear", "pouch", 1);
					vItem = "";
				end
			end

			if vItem then
				vItem = vItem:match("^%s*(.-)%s*$");
			end

			local sItemClothes = "";
			if vItem then
				if string.match(vItem, "common clothes") or string.match(vItem, "commoner's clothes") then
					sItemClothes = "clothes, common";
				elseif string.match(vItem, "traveler's clothes") then
					sItemClothes = "clothes, traveler's";
				elseif string.match(vItem, "fine clothes") then
					sItemClothes = "clothes, fine";
				elseif string.match(vItem, "vestments") then
					sItemClothes = "clothes, vestments";
				elseif string.match(vItem, "costume") then
					sItemClothes = "clothes, costume";
				end
			end
			if sItemClothes and sItemClothes ~= "" then
				addItemToInventory("Adventuring Gear", sItemClothes, 1);
				vItem = "";
			end

			if vItem then
				if string.match(vItem, "belaying pin") then
					addItemToInventory("Weapon", "club", 1);
					vItem = "";
				end

				if string.match(vItem, "blanket") then
					addItemToInventory("Adventuring Gear", "blanket", 1);
					vItem = "";
				end

				if string.match(vItem, "block and tackle") then
					addItemToInventory("Adventuring Gear", "block and tackle", 1);
					vItem = "";
				end

				if string.match(vItem, "book") then
					addItemToInventory("Adventuring Gear", "book", 1);
					vItem = "";
				end

				if string.match(vItem, "bullseye lantern") then
					addItemToInventory("Adventuring Gear", "lantern, bullseye", 1);
					vItem = "";
				end

				if string.match(vItem, "carpenter's tools") then
					addItemToInventory("Adventuring Gear", "carpenter's tools", 1);
					vItem = "";
				end

				if string.match(vItem, "crowbar") then
					addItemToInventory("Adventuring Gear", "crowbar", 1);
					vItem = "";
				end

				if string.match(vItem, "dagger") then
					addItemToInventory("Weapon", "dagger", 1);
					vItem = "";
				end

				if string.match(vItem, "[Dd]isguise kit") then
					addItemToInventory("Adventuring Gear", "disguise kit", 1);
					vItem = "";
				end

				if string.match(vItem, "emblem") then
					addItemToInventory("Adventuring Gear", "emblem", 1);
					vItem = "";
				end

				if string.match(vItem, "[Ff]ishing tackle") then
					addItemToInventory("Adventuring Gear", "fishing tackle", 1);
					vItem = "";
				end

				if string.match(vItem, "forgery kit") then
					addItemToInventory("Adventuring Gear", "forgery kit", 1);
					vItem = "";
				end

				if string.match(vItem, "healer's kit") then
					addItemToInventory("Adventuring Gear", "healer's kit", 1);
					vItem = "";
				end

				if string.match(vItem, "herbalism kit") then
					addItemToInventory("Adventuring Gear", "herbalism kit", 1);
					vItem = "";
				end

				if string.match(vItem, "hammer") then
					addItemToInventory("Adventuring Gear", "hammer", 1);
					vItem = "";
				end

				if string.match(vItem, "horn") then
					addItemToInventory("Adventuring Gear", "horn", 1);
					vItem = "";
				end

				if string.match(vItem, "incense") then
					addItemToInventory("Adventuring Gear", "incense", 5);
					vItem = "";
				end

				if string.match(vItem, "ink") then
					addItemToInventory("Adventuring Gear", "ink (1-ounce bottle)", 1);
					vItem = "";
				end

				if string.match(vItem, "iron pot") then
					addItemToInventory("Adventuring Gear", "pot, iron", 1);
					vItem = "";
				end

				if string.match(vItem, "manacles") then
					addItemToInventory("Adventuring Gear", "manacles", 1);
					vItem = "";
				end

				if string.match(vItem, "miner's pick") then
					addItemToInventory("Adventuring Gear", "pick, miner's", 1);
					vItem = "";
				end

				if string.match(vItem, "parchment") then
					addItemToInventory("Adventuring Gear", "parchment (one sheet)", 1);
					vItem = "";
				end

				if string.match(vItem, "pen ") or string.match(vItem, "quill") or vItem == "pen" then
					addItemToInventory("Adventuring Gear", "ink pen", 1);
					vItem = "";
				end

				if string.match(vItem, "poisoner's kit") then
					addItemToInventory("Adventuring Gear", "poisoner's kit", 1);
					vItem = "";
				end

				if string.match(vItem, "pouch") then
					addItemToInventory("Adventuring Gear", "pouch", 1);
					vItem = "";
				end

				if string.match(vItem, "robes") then
					addItemToInventory("Adventuring Gear", "robes", 1);
					vItem = "";
				end

				if string.match(vItem, "staff") then
					addItemToInventory("Adventuring Gear", "staff", 1);
					vItem = "";
				end

				if string.match(vItem, "shovel") then
					addItemToInventory("Adventuring Gear", "shovel", 1);
					vItem = "";
				end

				if string.match(vItem, "silk rope") then
					addItemToInventory("Adventuring Gear", "rope, silk (50 Feet)", 1);
					vItem = "";
				end

				if string.match(vItem, "tent") then
					addItemToInventory("Adventuring Gear", "tent", 1);
					vItem = "";
				end

				if string.match(vItem, "tinderbox") then
					addItemToInventory("Adventuring Gear", "tinderbox", 1);
					vItem = "";
				end

				if string.match(vItem, "torch") then
					addItemToInventory("Adventuring Gear", "torch", 10);
					vItem = "";
				end
				if string.match(vItem, "set of bone dice or deck of cards") then
					createBackgroundChoices(getItemByType("gaming set"), "dice set or playing card set");
					vItem = "";
				end

				if string.match(vItem, "artisan") then
					createBackgroundChoices(getItemByType("artisan's tools"));
					vItem = "";
				end

				if string.match(vItem, "gaming set") then
					createBackgroundChoices(getItemByType("gaming set"));
					vItem = "";
				end

				if string.match(vItem, "holy symbol") then
					createBackgroundChoices(getItemByType("holy symbol"));
					vItem = "";
				end

				if string.match(vItem, "musical instrument") then
					createBackgroundChoices(getItemByType("musical instrument"));
					vItem = "";
				end
			end
			setGold(nGold);
			--createCustomInventoryItem(vItem);
			vItem = "";
		end		
	end
end

function createBackgroundChoices(aChoices, sLimit)
	local w1 = createWindow();
	w1.group_name.setValue("BACKGROUND CHOICE 1");
	w1.order.setValue(1);
	if sLimit and sLimit ~= "" then
		for _,vChoice in pairs(aChoices) do
			if string.match(sLimit, vChoice.name) then
				w1a = w1.selection_window.createWindow();
				w1a.bname.setText(StringManager.capitalizeAll(vChoice.name));
				w1a.name.setValue(vChoice.name);
				w1a.type.setValue("Adventuring Gear");
				w1a.value.setValue(1);					
				w1a.shortcut.setValue("reference_equipment", vChoice.link);
				w1a.shortcut.setVisible(false);
			end
		end
	else
		for _,vChoice in pairs(aChoices) do
			w1a = w1.selection_window.createWindow();
				w1a.bname.setText(StringManager.capitalizeAll(vChoice.name));
				w1a.name.setValue(vChoice.name);
				w1a.type.setValue("Adventuring Gear");
				w1a.value.setValue(1);					
				w1a.shortcut.setValue("reference_equipment", vChoice.link);
				w1a.shortcut.setVisible(false);
		end		
	end
end

function addEquipment(sTypeGroup, sSubType, w)
	local aItems = {};
	local aItemCheck = {};	

	if not sTypeGroup then
		sTypeGroup = "Adventuring Gear";
	end

	local sToolGroup = "Tools";

	local aMappings = LibraryData.getMappings("item");
	for _,vMapping in ipairs(aMappings) do
		for _,vItem in pairs(DB.getChildrenGlobal(vMapping)) do	
			local sItemLower = "";
			local sItemType = DB.getValue(vItem, "type", "");
			local sItemSubType = DB.getValue(vItem, "subtype", "");
			local sItemProperties = DB.getValue(vItem, "properties", "");
			if sTypeGroup == "Adventuring Gear" then
				if sItemType == sTypeGroup or sItemType == sToolGroup then
					sItemLower = StringManager.trim(DB.getValue(vItem, "name", "")):lower();
				end
			else
				if sItemType == sTypeGroup then
					sItemLower = StringManager.trim(DB.getValue(vItem, "name", "")):lower();
				end
			end
			local sItemLink = vItem.getPath();
			if not StringManager.contains(aItemCheck, sItemLower) then
				if not string.match(sItemProperties, "magic") and string.match(sItemSubType, sSubType) then
					table.insert(aItemCheck, sItemLower);
					local wndSubwindow = w.selection_window.createWindow();
					local sItemCapitalized = StringManager.capitalizeAll(sItemLower);
					wndSubwindow.bname.setText(sItemCapitalized);
					wndSubwindow.name.setValue(sItemCapitalized);
					wndSubwindow.type.setValue(sTypeGroup);
					wndSubwindow.value.setValue(1);					
					wndSubwindow.shortcut.setValue("reference_equipment", sItemLink);
					wndSubwindow.shortcut.setVisible(false);
				end
			end
		end
	end
	w.selection_window.applySort();
end

function addItemToInventory(sTypeGroup, sItem, nCount, sRecord)
	local aItems = {};
	local aItemCheck = {};	

	if not sTypeGroup then
		sTypeGroup = "Adventuring Gear";
	end

	if not nCount or nCount == 0 then
		nCount = 1;
	end

	local sToolGroup = "Tools";

	local aMappings = LibraryData.getMappings("item");
	for _,vMapping in ipairs(aMappings) do
		for _,vItem in pairs(DB.getChildrenGlobal(vMapping)) do
			local sItemLower = "";
			local sItemType = DB.getValue(vItem, "type", "");
			local sItemSubType = DB.getValue(vItem, "subtype", "");
			local sItemProperties = DB.getValue(vItem, "properties", "");			
			if sTypeGroup == "Adventuring Gear" then
				if sItemType == sTypeGroup or sItemType == sToolGroup then
					sItemLower = StringManager.trim(DB.getValue(vItem, "name", "")):lower();
				end
			else
				if sItemType == sTypeGroup then
					sItemLower = StringManager.trim(DB.getValue(vItem, "name", "")):lower();
				end
			end
			local sCost = DB.getValue(vItem, "cost", "");
			local nWeight = DB.getValue(vItem, "weight", "");
			local nArmorClass = DB.getValue(vItem, "ac", "");
			local sDamage = DB.getValue(vItem, "damage", "");
			local sItemLink = vItem.getPath();
			local sItemModule = StringManager.split(sItemLink, "@")[2];
			if sItemLower == string.lower(sItem) and sItemModule == "DD PHB Deluxe" then				
				if not string.match(sItemProperties, "magic") then
					table.insert(CampaignRegistry.charwizard.inventorylist, {record = sItemLink, carried=0, count=nCount})
				end
			end
		end
	end
end

function createCustomInventoryItem(aCustomItems)
	for _,vCustomItem in pairs(aCustomItems) do
		table.insert(CampaignRegistry.charwizard.inventorylist, { name = vCustomItem.name, record = vCustomItem.record, carried=0, count=1, description = vCustomItem.desc });
	end
end

function setGold(nGold)
	CampaignRegistry.charwizard.inventory = CampaignRegistry.charwizard.inventory or {};
	CampaignRegistry.charwizard.inventory.wealth = CampaignRegistry.charwizard.inventory.wealth or {};
	CampaignRegistry.charwizard.inventory.wealth.gold = nGold;	
end

function getItemByType(sItemType)
	local aTools = {};
	if sItemType and sItemType ~= "" then
		sItemType = string.lower(sItemType);
	end
	local aMappings = LibraryData.getMappings("item");
	for _,vMapping in ipairs(aMappings) do
		for _,vItem in pairs(DB.getChildrenGlobal(vMapping)) do
			if StringManager.trim(DB.getValue(vItem, "subtype", "")):lower() == sItemType then
				table.insert(aTools, { name = StringManager.trim(DB.getValue(vItem, "name", "")):lower(), link = vItem });
			end
		end
	end
	local aFinalTools = {};
	local aDupes = {};
	for _,v in ipairs(aTools) do
		if not aDupes[v.name] then
			table.insert(aFinalTools, { name = v.name, link = v.link });
			aDupes[v.name] = true;
		end
	end
	return aFinalTools;
end