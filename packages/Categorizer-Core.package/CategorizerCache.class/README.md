caching all the infos about clases, methods and categories.

allCategories is a list of category names.
methodsPerCategory is a dictionary from category to list of (class -> methodName).
occurrencesPerMethod is a dictionary from methodName to list of (class -> category).
occurrencesPerMethodPrefix is similar, but matches method names prefix based.

it also provides functionality for the adjusted "categorize all uncategorized" - action.