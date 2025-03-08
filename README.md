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

![](https://nirzak-streak-stats.vercel.app/?user=enetwarch&theme=tokyonight&hide_border=true)
![](https://github-readme-stats.vercel.app/api/top-langs/?username=enetwarch&theme=tokyonight&hide_border=true&include_all_commits=false&count_private=false&layout=compact)