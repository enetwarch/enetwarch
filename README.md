```JavaScript
for (let problem = 1; problem < Number.MAX_VALUE; problem++) {
    const difficulty = Math.floor(Math.random() * 100);
    for (let attempts = 1; attempts < Number.MAX_VALUE; attempts++) {
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