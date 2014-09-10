if (dayz_combat == 1) then {
   titleText ["You can't select a spawn point while in combat.", "PLAIN DOWN", 3];
   sleep 5;
   titleFadeOut 1;
} else {
   titleText ["Spawning at base...", "PLAIN DOWN", 3];
   player setPosATL [3746.92,17922.6,0];
   showCommandingMenu '';
   sleep 2;
   titleText ["Spawned!", "PLAIN DOWN", 3];
   sleep 2;
   titleFadeOut 1;
   execVM "newspawn\classes_execute.sqf";
};