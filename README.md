```JavaScript
// Everytime you wake up...
simulateProblems();

// No matter what, you will always have problems.
function simulateProblems() {
    for (let problems = 1; problems < Infinity; problems++) {
        const difficulty = Math.random();

        simulateAttempts(difficulty);
    }
}

// The important part is to just keep trying.
function simulateAttempts(difficulty) {
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

![](https://nirzak-streak-stats.vercel.app/?user=enetwarch&theme=transparent&hide_border=true)
![](https://github-readme-stats.vercel.app/api/top-langs/?username=enetwarch&theme=transparent&hide_border=true&include_all_commits=false&count_private=false&layout=compact)
