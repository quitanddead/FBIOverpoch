sleep 5;
waitUntil {!dialog};
systemChat ('Use your scroll wheel to select a spawn location!');
cutText ["                 \nUse your scroll wheel to select a spawn location!","PLAIN"];
execVM "Scripts\Newspawn\newspawn_main.sqf";