```
docker build -t iverilog .
docker run -v /absolute/path/to/folder:/src -i --rm iverilog test_bench.v -o test_bench.vvp
```
