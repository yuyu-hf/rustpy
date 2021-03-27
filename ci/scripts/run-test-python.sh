# https://github.com/PyO3/pyo3
# On Linux, rename libstring_sum.so to string_sum.so
cp ./target/release/librustpy.so python/rustpy.so
cd python
python3.9 -m unittest
