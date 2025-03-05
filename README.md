```JavaScript
for (let problem = 1; problem < Infinity; problem++) {
    const difficulty = Math.floor(Math.random() * 100);
    for (let attempts = 1; attempts < Infinity; attempts++) {
        const outcome = Math.floor(Math.random() * 100);
        if (outcome < difficulty) {
            console.log("Failed");
        } else {
            console.log("Success");
            break;
        }
    }
}
```