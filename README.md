```
docker build -f Dockerfile.iverilog -t iverilog .
docker run -v /absolute/path/to/folder:/src -i --rm iverilog test_bench.v -o test_bench.vvp
```
```
docker build -f Dockerfile.vvp -t vvp .
docker run -v /absolute/path/to/folder:/src -i --rm vvp test_bench.vvp
```
