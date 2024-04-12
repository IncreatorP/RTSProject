if (actionType == "Look") {
    var preciseCurrentDir = direction mod 360; // Current direction normalized
    var roundedTargetDir = round(desiredDir / 45) * 45; // Round to nearest 45 degrees

    var diff = (360 + roundedTargetDir - preciseCurrentDir) mod 360;
    if (diff > 180) {
        diff = -(360 - diff); // Calculate shortest direction change
    }

    if (abs(diff) <= 22.5) {
        direction = roundedTargetDir;
        actionNum = -1;
        actionType = "";
        desiredDir = direction;
        array_shift(actionList);
    } else {
        if (diff < 0) {
            direction -= 45; // Turn counter-clockwise
        } else {
            direction += 45; // Turn clockwise
        }
        direction = (direction + 360) mod 360;
    }

    alarm[0] = turnRate;
}