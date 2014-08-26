class ExtraRc {
    class ItemRuby {
        class BB1 {
            text = "Build Bandit Level 1 House";
            script = "['B1'] execVM 'custom\originsbuild.sqf'";
        };
		class BB2 {
            text = "Build Bandit Level 2 House";
            script = "['B2'] execVM 'custom\originsbuild.sqf'";
        };
		class BB3 {
            text = "Build Bandit Level 3 House";
            script = "['B3'] execVM 'custom\originsbuild.sqf'";
        };
	};
		
	class ItemSapphire {
       class BH1 {
            text = "Build Hero Level 1 House";
            script = "['H1'] execVM 'custom\originsbuild.sqf'";
        };
		class BH2 {
            text = "Build Hero Level 2 House";
            script = "['H2'] execVM 'custom\originsbuild.sqf'";
        };
		class BH3 {
            text = "Build Hero Level 3 House";
            script = "['H3'] execVM 'custom\originsbuild.sqf'";
        };
	};
	
	class ItemTopaz {
	class BSG {
            text = "Build Small Garage";
            script = "['SG'] execVM 'custom\originsbuild.sqf'";
        };
		class BLG {
			text = "Build Large Garage";
			script = "['LG'] execVM 'custom\originsbuild.sqf'";
        };
   };
	
	class ItemEmerald {
		class BPG {
			text = "Build Pyramid Garage";
			script = "['PG'] execVM 'custom\originsbuild.sqf'";
        };
   };
   
};

class ExtraRc2 {
class ItemObsidian {
		class menuItem1 {
			text = "Build Stronghold";
			script = "spawn player_buildStronghold;";
		};
	};
};
