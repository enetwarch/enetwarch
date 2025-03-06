```JavaScript
for (let problem = 1; problem < Infinity; problem++) {
    const difficulty = Math.random();
    for (let attempts = 1; attempts < Infinity; attempts++) {
        const outcome = Math.random();
        if (outcome < difficulty) {
            console.log("Failed");
        } else {
            console.log("Success");
            break;
        }
    }
}
```