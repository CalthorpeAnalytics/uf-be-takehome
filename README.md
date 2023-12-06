
You will have 72 hours to complete upon receiving this exercise. Should you have any questions, please contact `andrew@urbanfootprint.com`.

We expect that this exercise should take roughly two hours to complete.  If you find it is taking significantly longer, please get in touch because there may have been some miscommunication or misunderstanding that we'd like to rectify!

To submit your exercise, simply zip up your project and email it to the recruiter.

INSTRUCTIONS

The task is to load a provided GeoJSON dataset; package the data in it into an intermediate, in-memory data structure; perform some analysis on the dataset; and then output that data structure into a simple text format for easy verification and visualization of the results.

Specifically...

1) Load the dataset provided in `datasets/NYC_Public_Schools_Points.geojson`. The supplied Dockerfile installs `geopandas`, a common tool for this type of operation. For background on how to use `geopandas`, see [here](https://geopandas.org/en/stable/getting_started/introduction.html). (Note: the use of `geopandas` is not a requirement; the use of other tools is welcome.)

The dataset represents point locations and attributes of public schools in New York City. The geographic point is defined by a coordinate pair of degrees longitude and degress latitude values. The additional metadata describe the school at each point with attirbutes such as address, grades served, borough, etc. The value of `LOC_CODE` for each school is unique. It was originally accessed from https://data.cityofnewyork.us/Education/School-Point-Locations/jfju-ynrr.

2) For each high school in the dataset, find the middle school nearest to it. A high school serves grades 9, 10, 11 and 12; a middle school serves grades 6, 7 and 8. If a single school serves both grades 6-8 and 9-12, find the nearest middle school with a different value `LOC_CODE` (i.e., the values of `LOC_CODE` of the high school and the nearest middle school should always be different).

3) Output the results to a csv. The output should contain two columns: the `LOC_CODE` of the high school and the `LOC_CODE` of the nearest middle school. The rows should be sorted in ascending order by high school `LOC_CODE`.

4) Write tests to validate the core logic and a few conditions that represent edge cases. Use Python’s `unittest` module, and the `mock` module if desired.

5) Make sure everything runs simply by running the already included go.sh as the main entrypoint.

Note: `geopandas` has its own learning curve and this exercise isn't meant to test any existing knowledge of it. If you're using `geopandas` in your solution, you'll likely find the `distance` method helpful: https://geopandas.org/en/stable/docs/reference/api/geopandas.GeoSeries.distance.html.

Please include a README that gives instructions for setup required to run your code (if any).

If you fork our repo, please make sure to make it private so other candidates can't see your solution!


EVALUATION

In evaluating your exercise, we don't so much care about how character-perfect, precisely you match the expected_output.csv.  What we really care about is that your solution is correct and also demonstrates your overall skill and professionalism in structuring a project, handling (and testing) edge cases, designing the in-memory object model, writing clear and easy to understand code, writing defensive code, and writing well tested code.

To that end, while there may be big libraries you can import and use to solve the problem in one line, we encourage you to take a lighter approach that more clearly demonstrates these skills.  We have purposely constructed an exercise that should not require a lot of dependencies or domain knowledge specifically so that we can focus on your ability to structure professional code.


DOCUMENTATION

Use this section to document any assumptions or choices you'd like to call out in your code or your design.

SETUP

A Docker file is provided to get you started with some useful packages:
```
docker build --tag=uf-be-takehome .
```

Your submission should be invocable using the included `go.sh` script, e.g.:
```
docker run uf-be-takehome ./go.sh
```
