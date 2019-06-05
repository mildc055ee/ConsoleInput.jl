using Coverage
result = process_folder()
Coveralls.submit(result)
Codecov.submit(result)
