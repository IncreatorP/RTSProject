// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function swap(a, b) {
    if (a > b) {
        var c = b;
        b = a;
        a = c;
    }
    return [a, b];
}