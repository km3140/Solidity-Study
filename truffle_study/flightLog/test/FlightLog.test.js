const FlightLog = artifacts.require("FlightLog");

contract("FlightLog", accounts => {
  // 👇 constructor와 비슷
    before(async () => {
        flightLog = await FlightLog.deployed();
        console.log("ㅡㅡㅡㅡ",flightLog.address);
    });

    // it("deploys successfully", async () => {
    //     const owner = await flightLog.owner;
    //     console.log(owner);
    //     // assert.equal(owner, accounts[0]);
    // });
    it("owner is correct", async () => {
        const owner = await flightLog.getOwner();
        const contractOwner = await flightLog.owner;
        console.log("contractOwner" , contractOwner);
        console.log("owner" , owner);
        console.log("accounts[0]" , accounts[0]);
        assert.equal(owner, accounts[0]);
    });

    // it("adds a flight", async () => {
    //     const flight = "ND1309";
    //     await flightLog.logging("timestamp" , flight );
    //     const arrLogs = await flightLog.getLog(0)
    //     console.log(arrLogs);
    //     assert.equal(arrLogs.flight, "HL-ND1309");
    //     assert.equal(arrLogs.managerSign, false);
    //     assert.equal(arrLogs.studentSign, false);
    // });

    // it("adds a manager Sighn", async () => {
    //     await flightLog.doManagerSign(0);
    //     const arrLogs = await flightLog.getLog(0)
    //     console.log(arrLogs);
    //     assert.equal(arrLogs.managerSign, true);
    //     assert.equal(arrLogs.studentSign, false);
    // });

    // it("adds a student Sign", async () => {
    //     await flightLog.doStudentSign(0);
    //     const arrLogs = await flightLog.getLog(0)
    //     console.log(arrLogs);
    //     assert.equal(arrLogs.managerSign, true);
    //     assert.equal(arrLogs.studentSign, true);
    // });

    // doManagerSign doStudentSign
})