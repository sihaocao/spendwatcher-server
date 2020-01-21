function makeExpensesArray() {
    return [
      {
        id: 1,
        amount: "9.99",
        style: "Food",
        description: "Monday morning breakfast",
        date: new Date().toDateString()
      },
      {
        id: 2,
        amount: "50.00",
        style: "Transportation",
        description: "Train ticket",
        date: new Date().toDateString()
      },
      {
        id: 3,
        amount: "200.95",
        style: "Bills",
        description: "Property tax",
        date: new Date().toDateString()
      }
    ];
}

module.exports = {
    makeExpensesArray,
}