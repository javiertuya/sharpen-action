rem Test sharpen container from local windows desktop
rem run from the test folder
rem converted code will be placed in src/main/main.net

rmdir /s /q src\main\main.net

docker build -t sharpen ..
docker run -v %CD%:/sharpen/workdir sharpen . src/main/java @sharpen-all-options.txt

rem uses the tests in the same application to compare converted files with the expected
mvn clean test --no-transfer-progress
