var Viking = function(name, health, strenght, cry){
    this.name = name;
    this.health = health;
    this.strenght = strenght;
    this.damage = 0;
    // this.fight = true;

    this.shout = function () {
        console.log(cry);
    };

    this.hit = function () {
        return this.strenght;
    };

    this.receive = function (damage) {
        this.damage += damage;
    };
};

var Sackson = function(){
    this.health = getRandom();
    this.strenght = getRandom();
    this.damage = 0;

    function getRandom(){
        Math.floor(Math.random() * (30 - 5)) + 5;
    }

    this.hit = function () {
        return this.strenght;
    };

    this.receive = function (damage) {
        this.damage += damage;
    };
}

function pit (vikings, turns) {
    var attacker = vikings[0];
    var receiver = vikings[1];
    var turns = turns;
    var winner;

    for (var i = 0; i <= turns; i++) {
        console.log("Turn " + (i+1));
        if (i == turns)
        {
            debugger;
            winner = attacker.health > receiver.health ? attacker : receiver;
            return end(winner);
        } else if (receiver.health > attacker.strenght)
        {
            attacker.shout();
            receiver.receive(attacker.hit());
            console.log(attacker.name + " hits " + receiver.name);
        } else
        {
            console.log(receiver.name + " surrenders...");
        };
        attacker = receiver;
        receiver = vikings[i%2];
    };

    function end (winner) {
        console.log(winner.name + " wins!\r\n"
            + attacker.name + ", damage: " + attacker.damage + "\r\n"
            + receiver.name + ", damage: " + receiver.damage +  "\r\n");
    }
};

function invasion (vikings, sacksons) {
    var viking = vikings[Math.floor(Math.random()*vicking.length)];
    var sackson = sacksons[Math.floor(Math.random()*sacksons.length)];

    for (var i = 0; i <= turns; i++) {
        console.log("Turn " + (i+1));
        if (i == turns)
        {
            debugger;
            winner = attacker.health > receiver.health ? attacker : receiver;
            return end(winner);
        } else if (receiver.health > attacker.strenght)
        {
            attacker.shout();
            receiver.receive(attacker.hit());
            console.log(attacker.name + " hits " + receiver.name);
        } else
        {
            console.log(receiver.name + " surrenders...");
        };
        attacker = receiver;
        receiver = vikings[i%2];
    };

    function end (winner) {
        console.log(winner.name + " wins!\r\n"
            + attacker.name + ", damage: " + attacker.damage + "\r\n"
            + receiver.name + ", damage: " + receiver.damage +  "\r\n");
    }
}

var olof = new Viking("Olof", 100, 20, "SIUUUU!!!!!");
var magnus = new Viking("Magnus", 90, 5, "AIBAAA!!");
var vikings =[olof, magnus];

var sackson1 = new Sackson();
var sackson2 = new Sackson();
var sackson3 = new Sackson();
var sackson4 = new Sackson();
var sackson5 = new Sackson();
var sackson6 = new Sackson();
var sackson6 = new Sackson();
var sackson7 = new Sackson();
var sacksons = [sackson1, sackson2, sackson3, sackson4, sackson5, sackson6, sackson7]

var turns = 3;

pit(vickings, 4);

invasion(vickings, sacksons);
