
You will have 72 hours to complete upon receiving this exercise. Should you have any questions, please contact tim.cull@urbanfootprint.com

We expect that this exercise should take roughly two hours to complete.  If you find it is taking significantly longer, please get in touch because there may have been some miscommunication or misunderstanding that we'd like to rectify!

To submit your exercise, simply zip up your project and email it to the recruiter.

INSTRUCTIONS

The task is to scrape a web page, package the data on it into an intermediate, in-memory data structure, and then output that data structure into a simple text format for easy verification and visualization of the results.

Specifically...

1) Fetch the semi-structured per-state voter registration deadline info from https://web.archive.org/web/20190209174006/https://www.nonprofitvote.org/voting-in-your-state/voter-registration-deadlines/. A few notes on this resource:
    1) We’re using an archived version in the interest of consistency, so this data is for 2018.
    2) You shouldn’t need to use the last column (“Description”)--it’s just an explanation of the general rule that produces the dates in the earlier columns.
    3) The table is a little unclear about this, but assume that any state that just has a date but doesn't indicate explicitly what the date is for has both in-person and by-mail registration on that date.  If that state also has an online voter registration link (e.g. Alabama), then also assume the online date is that same date, otherwise (e.g. Arkansas) assume there is no online registration.
2) For each state, store the in-person, by-mail, and online voter registration deadlines, if any, into an in-memory object structure.  Define a schema that makes the most sense to you for representing the data.
3) Iterate through your in-memory object structure to output a csv to stdout that resembles expected_output.csv
4) Write tests to validate the core parsing logic and a few states that represent edge cases. Use Python’s ‘unittest’ module, and the ‘mock’ module if desired.
5) Make sure everything runs simply by running the already included go.sh as the main entrypoint.

Please include a README that gives instructions for setup required to run your code (if any).

If you fork our repo, please make sure to make it private so other candidates can't see your solution!


EVALUATION

In evaluating your exercise, we don't so much care about how character-perfect, precisely you match the expected_output.csv.  What we really care about is that your solution is correct and also demonstrates your overall skill and professionalism in structuring a project, handling (and testing) edge cases, designing the in-memory object model, writing clear and easy to understand code, writing defensive code, and writing well tested code.

To that end, while there may be big libraries you can import and use to solve the problem in one line, we encourage you to take a lighter approach that more clearly demonstrates these skills.  We have purposely constructed an exercise that should not require a lot of dependencies or domain knowledge specifically so that we can focus on your ability to structure professional code.


DOCUMENTATION

Use this section to document any assumptions or choices you'd like to call out in your code or your design.
